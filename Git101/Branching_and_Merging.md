# Branching and Merging

## Branching
Allow to work on multiple things without messing up the main project

- git branch = list/create branches
- git checkout -b (branch) = create and switch (older syntax)
- git switch -c (branch) = newer version of switching - *smooth and easier for beginners*
- git switch (branch) = switch branch safely
- git branch -d (branch)

## Merging
Combining changes from one branch to another branch

- git merge (branch) = merge target into current branch

Fast forward merge
- If no commits were made to the main, a merge would just move the pointer forward to the commit of the source branch

Recursive merge (true merge)
- when two branches have commits, a merge would diverge the branches together into the main branch

Conflicts?
- When the same file is edited on both branch, after a merge, git wont know what to do therefore manual resolution would be needed


### Visualise branches & logs
- git log --oneline = compacy commit view
- git log --graph = visual tree structure
- git log --oneline --graph = all - BEST = compact, visual and full view

These commands allow debugging merges and tracking of branches