# Best Practices

### Commit Hygiene & Best practice
- Write clear and concise, focused commit messages
- Use squashing before merging PRs = try to squash relavant changes into one less commits
- One logical change per commit
- Avoid messy merges

### Pre-commit & Automation
Broken code should not enter repo
1. Run linters/tests before committing like Pre-commit 
2. Hook into CI pipelines for formatting, testing and scanning

### Common mistakes
- Forgetting to pull before pushing
- Force pushing with git push --force to shared branches
- Committing secrets
- Merging without review
- Not using .gitignore properly