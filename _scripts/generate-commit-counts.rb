# Fetch monthly GitHub commit counts via the GraphQL API and write a JSON
# data file for the talks/viz/commit-counts/ line chart.
#
# Counts `viewer.contributionsCollection.totalCommitContributions` per month,
# i.e. every commit GitHub attributes to the authenticated user across all
# repos (including private and repos they don't own) -- the same number shown
# on the profile contribution graph. Queried one month at a time because that
# field is a single total per (from, to) window.
#
# Run via `rake commits` (requires GITHUB_TOKEN with read:user, plus repo to
# include private-repo commits).
#
# Output (talks/viz/commit-counts/commits.json):
#   [ { "month": "2024-01", "count": 120 }, ... ]

require 'octokit'
require 'json'
require 'date'
require 'fileutils'

START_MONTH = Date.new(2023, 7, 1)
END_MONTH   = Date.new(2026, 6, 1)
OUTPUT      = "talks/viz/commit-counts/commits.json"

QUERY = <<~GRAPHQL
  query($from: DateTime!, $to: DateTime!) {
    viewer {
      contributionsCollection(from: $from, to: $to) {
        totalCommitContributions
      }
    }
  }
GRAPHQL

puts "Generating monthly commit counts"
client = Octokit::Client.new(:netrc => true, :access_token => ENV['GITHUB_TOKEN'])

now = Time.now.utc
data = []
month = START_MONTH

while month <= END_MONTH
  next_month = month >> 1
  from = Time.utc(month.year, month.month, 1)
  to   = Time.utc(next_month.year, next_month.month, 1) - 1   # last second of the month
  to   = now if to > now                                      # don't query into the future

  result = client.post(
    "/graphql",
    { query: QUERY, variables: { from: from.iso8601, to: to.iso8601 } }.to_json
  )

  if result.respond_to?(:errors) && result.errors
    abort "GraphQL error for #{month.strftime('%Y-%m')}: #{result.errors.map(&:message).join('; ')}"
  end
  unless result.respond_to?(:data) && result.data
    abort "No data returned for #{month.strftime('%Y-%m')} -- check GITHUB_TOKEN scopes (read:user, repo)"
  end

  count = result.data.viewer.contributionsCollection.totalCommitContributions
  label = month.strftime("%Y-%m")
  puts "\t#{label}: #{count}"
  data << { "month" => label, "count" => count }

  month = next_month
end

FileUtils.mkdir_p(File.dirname(OUTPUT))
File.write(OUTPUT, JSON.pretty_generate(data) + "\n")
puts "Wrote #{data.length} months to #{OUTPUT}"
