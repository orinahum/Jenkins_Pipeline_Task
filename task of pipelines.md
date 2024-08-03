# Jenkins Pipeline Task

Create a pipeline that uses RestAPI request to run seperate pipelines on the Jenkins Workers

### Sub-Tasks

- Setup Jenkins Main and Worker containers connected manually
- Create token to run the pipelines via `curl` command
- Generate pipeline that will be initiated with `curl` command from terminal
    - In pipeline, each stage will be seperate pipeline for each task, meaning instead of task you'll be running seperate pipeline for the task:
        - Pipeline for spellcheck
        - Pipeline for codespell and shellcheck(tool that test shell script syntax)
        - Pipeline for tests (use pytest to check your python code)
        - Pipeline for build (only build the container)
    - In the last step of the container please save the image to hub.docker.com


### Notes

- All the tasks needs to alone standing repository in you user on github/gitlab/gitea/bitbucket
- All the scripts, Jenkinfiles and tests need to be part of repository
- Repository should also include README.md file that describes what is should do, what it actually does and what what are the gaps
- Repository should also include INSTALL.md that explains how to run the project
- In case multiple people working on the project repo should contain CONTRIBUTORS.md file with full-names and nick-names
    - Grade will be provided to all project participants according questioning

### Warning

You are graded for this task