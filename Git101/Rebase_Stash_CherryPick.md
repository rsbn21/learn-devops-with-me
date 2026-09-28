# Rebase, Stash, Chery-Pick

## Rebase Vs Merge
Merge = bringing two branches together
- Preserves history
- Creates a new commit 
- Good for team workflows
- *USE WHEN WORKING COLLABORATIVELY*

Rebase = rewrites git history to make branch look as if it was built off the latest commit
- Rewrites history so its linear
- No merge commits
- Ideal for cleanup before Pull Req
- *CLEANING LOCAL HISTORY, NEVER FOR SHARED WORKFLOWS*

## Git Stash & Pop
When you are working on something, and are not ready to commit but need to work on something else...
- git stash = temporarily saves uncommited changes into a "stash box"
- git stash list = view all stashes
- git stash apply = reapply latest stash (keeps stash)
- git stash pop = reapply and delete the stash

## Revert, Reset, Cherry-Pick

git revert
- creates a new commit that reverses another commit without whilst keeping your history intact
- safest for shared history
- Used in Prod

git reset
- Moves branch pointer backwards 
- Soft = keep changes staged
- Mixed = unstages changes
- Hard = nukes everything by rewriting history

git cherry-pick
- Apply a single commit from a different branch to current one
- Good for when you dont want to merge everything and only want to grab a single commit

