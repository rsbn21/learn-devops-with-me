# Github
Platform for your repo, single source of truth, cloud

## Connecting to GitHub
1. git remote add origin (url) = link local with github
2. git push -u origin main = send work to the cloud
3. git pull = brings changes down from github
4. SSH = secure and no password needed
5. HTTPS =. easy but asks for credentials

### Forks and Pull Requests
- Fork = copy of someone elses repo for you to work on yourself without affecting the repo
    - Clone the forked repo to local machine
    - Make changes and push to your fork
- Pull Request = request to propose your changes 
    - Used in open src and cross-team workflows
    - Owner of repo can review, comment and merge changes

## Typical Workflow
1. Dev pulls latest main or clones repo
2. Creates feature branch
3. Works locally -> commits -> pushes branch
4. Open PR -> review and merge
5. Team syncs regulary via git pull --rebase or merge


### Trunk-Based Development
- Short lived branches, all devs commit to main regulary
- Heavy and strong CI tests
- Used in fast moving orgs like google