---
layout: misc
title: Format guide
---

## Projects

Each project exists as a git submodule.  To add a project and have it automatically redeploy when the project's GitHub repo is updated requires the following two steps:

### 1. Add the project to the Jekyll index

Open the file `_config.yml` and append the full repo name to the YAML `projects` listing.  This should then look like:

```
projects:
  - trvrb/coaltrace
  - trvrb/stem
  ...
  - owner/project-name
```

where `owner` and `project-name` is specific to the new project.  Commit this change to the [blotter](https://github.com/blab/blotter) GitHub repo. 

### 2. Set a webhook from GitHub 

From the project repo, go to Settings / Service Hooks / WebHook URLs, and add `http://blotter-hook.herokuapp.com/` to the list.

