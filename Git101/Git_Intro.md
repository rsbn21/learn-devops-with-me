# What is Git

## Version Countrol
- Tracks changes to code over time
- undo, inspect, collab
- Revert, review and branch
- Time machine for code and infrastructure

## Centralised Vs Distributed VC

### Centralised:
- Single server
- Requires network to commit
- Conflicts!!!
- if server goes down, everyone is stuck
- Collaboration is linear and tightly controlled

### Distributed
- Multiple branches
- Full history on every machine
- Everyone can commit locally


## Git is not a file tracker

- Tracks snapshots - Each commit is a snapshot of the whole repo at that point
- Uses key-value store (SHA-1 hash)
    - each commit has its own hash
- Files stored as objects (blobs, trees)
- Content-addressed. not file name based



