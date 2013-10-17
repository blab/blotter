# blotter: bedford lab research


## Projects

Each project exists as a git submodule.  To add a project and have it automatically redeploy when the project's GitHub repo is updated requires the following three steps:

1. 	**Add the project as a submodule.** Run the following from the base `blotter/` directory:
	`git submodule add https://github.com/owner/project-name.git projects/project-name`

2. 	**Add the project to the Jekyll index.** Create a new markdown post at `blotter/projects/_posts/`.  The YAML front matter should include:
	`title: project description`
	`repo: github repo name, corresponds to project-name in the directory structure, as above`

	
3. 	**Set a webhook from GitHub.** Go to `Settings` / `Service Hooks` / `WebHook URLs`, and add `http://blotter-hook.herokuapp.com/` to the list.

After steps 1 and 2, changes to the `blotter` repo should be pushed to GitHub.