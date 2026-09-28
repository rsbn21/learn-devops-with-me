# Git Terminology

- Repo = Git project - a tracked folder with a .git directtory in it

- Commit = snapshot of files and metadata

- Branch = a movable pointer to a specific commit e.g main/master

- Remote = reference to external Git host like Github

- Staging Area = prep zone for where the snapshot is before it is commited to the repo AKA Index

- Blobs = binary large objects - stores content of the files

- Trees = stores filenames, file paths - like a directory

## .git directory
Hidden directory which contains all history and config of repo

- .git/refs/ - tags and branches
- .git/objects/ - all commits
- .git/config - all repo settings
- .git/HEAD - current branch pointer
- .git/index - staging area

