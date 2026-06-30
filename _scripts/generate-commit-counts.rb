# Fetch monthly GitHub commit counts via the GraphQL API: total commits and the
# subset co-authored by Claude. Writes a JSON data file for the
# talks/viz/commit-counts/ chart.
#
#   total  -- viewer.contributionsCollection.totalCommitContributions per month,
#             i.e. every commit GitHub attributes to the authenticated user
#             across all repos (the profile contribution-graph number, incl.
#             private). One query per month (single total per (from, to) window).
#   claude -- of the user's commits, those whose message carries the Claude Code
#             co-author trailer ("Co-Authored-By: Claude <noreply@anthropic.com>").
#             There is no aggregate endpoint, so we discover the repos committed
#             to (commitContributionsByRepository), page each repo's
#             default-branch history filtered to the user's commits, and match
#             the trailer in each commit message, bucketed by month.
#
# Run via `rake commits` (requires GITHUB_TOKEN with read:user, plus repo to
# include private repos).
#
# Output (talks/viz/commit-counts/commits.json):
#   [ { "month": "2024-01", "total": 18, "claude": 0 }, ... ]

require 'octokit'
require 'json'
require 'date'
require 'fileutils'

START_MONTH = Date.new(2023, 7, 1)
END_MONTH   = Date.new(2026, 6, 1)
OUTPUT      = "talks/viz/commit-counts/commits.json"

# A commit is Claude-co-authored if its message carries the trailer. Matches
# both the bare "Co-Authored-By: Claude" and model-named variants via the email.
CLAUDE_TRAILER = /co-authored-by:\s*claude|noreply@anthropic\.com/i

NOW = Time.now.utc
client = Octokit::Client.new(:netrc => true, :access_token => ENV['GITHUB_TOKEN'])

# POST a GraphQL query, with retry/backoff. In tolerant mode, transient
# failures and per-repo errors return nil instead of aborting.
def gql(client, query, variables, tolerant: false)
  tries = 0
  begin
    result = client.post("/graphql", { query: query, variables: variables }.to_json)
  rescue StandardError => e
    tries += 1
    if tries <= 3
      sleep(2 ** tries)
      retry
    end
    raise if !tolerant
    warn "  ! request failed: #{e.message}"
    return nil
  end
  if result.respond_to?(:errors) && result.errors
    msg = result.errors.map { |x| x.message }.join('; ')
    abort "GraphQL error: #{msg}" if !tolerant
    warn "  ! graphql error: #{msg}"
  end
  result.respond_to?(:data) ? result.data : nil
end

# build the list of YYYY-MM month keys in range
months = []
m = START_MONTH
while m <= END_MONTH
  months << m.strftime("%Y-%m")
  m = m >> 1
end
total  = {}
claude = {}
months.each { |k| total[k] = 0; claude[k] = 0 }

# authenticated user node id (for filtering commit authorship)
viewer = gql(client, "query { viewer { id login } }", {})
user_id = viewer.viewer.id
puts "Viewer: #{viewer.viewer.login}"

# --- total commits per month + the set of repos committed to ---
CONTRIB_QUERY = <<~GRAPHQL
  query($from: DateTime!, $to: DateTime!) {
    viewer {
      contributionsCollection(from: $from, to: $to) {
        totalCommitContributions
        commitContributionsByRepository(maxRepositories: 100) {
          repository { nameWithOwner }
        }
      }
    }
  }
GRAPHQL

repos = {}
puts "Fetching monthly commit totals + repo set"
m = START_MONTH
while m <= END_MONTH
  nxt  = m >> 1
  from = Time.utc(m.year, m.month, 1)
  to   = Time.utc(nxt.year, nxt.month, 1) - 1
  to   = NOW if to > NOW
  data = gql(client, CONTRIB_QUERY, { from: from.iso8601, to: to.iso8601 })
  cc   = data.viewer.contributionsCollection
  key  = m.strftime("%Y-%m")
  total[key] = cc.totalCommitContributions
  cc.commitContributionsByRepository.each { |r| repos[r.repository.nameWithOwner] = true }
  puts "\t#{key}: #{total[key]}"
  m = nxt
end
puts "Repos with commits in range: #{repos.size}"

# --- Claude-co-authored subset (scan default-branch commit messages) ---
HISTORY_QUERY = <<~GRAPHQL
  query($owner: String!, $name: String!, $author: ID!, $since: GitTimestamp!, $until: GitTimestamp!, $cursor: String) {
    repository(owner: $owner, name: $name) {
      defaultBranchRef {
        target {
          ... on Commit {
            history(author: {id: $author}, since: $since, until: $until, first: 100, after: $cursor) {
              pageInfo { hasNextPage endCursor }
              nodes { committedDate message }
            }
          }
        }
      }
    }
  }
GRAPHQL

since_iso = Time.utc(START_MONTH.year, START_MONTH.month, 1).iso8601
until_iso = NOW.iso8601

puts "Scanning commit messages for Claude co-authorship"
repos.keys.sort.each do |full|
  owner, name = full.split("/", 2)
  cursor = nil
  repo_claude = 0
  loop do
    data = gql(client, HISTORY_QUERY,
      { owner: owner, name: name, author: user_id, since: since_iso, until: until_iso, cursor: cursor },
      tolerant: true)
    break if data.nil? || data.repository.nil?
    ref = data.repository.defaultBranchRef
    break if ref.nil? || ref.target.nil?
    hist = ref.target.history
    hist.nodes.each do |c|
      next unless c.message =~ CLAUDE_TRAILER
      key = c.committedDate[0, 7]
      next unless claude.key?(key)
      claude[key] += 1
      repo_claude  += 1
    end
    break unless hist.pageInfo.hasNextPage
    cursor = hist.pageInfo.endCursor
    sleep 0.3
  end
  puts "\t#{full}: #{repo_claude} Claude-co-authored" if repo_claude > 0
  sleep 0.2
end

data_out = months.map { |k| { "month" => k, "total" => total[k], "claude" => claude[k] } }

puts "month     total   claude"
data_out.each { |r| puts format("%-9s %6d %8d", r["month"], r["total"], r["claude"]) }

FileUtils.mkdir_p(File.dirname(OUTPUT))
File.write(OUTPUT, JSON.pretty_generate(data_out) + "\n")
puts "Wrote #{data_out.length} months to #{OUTPUT}"
