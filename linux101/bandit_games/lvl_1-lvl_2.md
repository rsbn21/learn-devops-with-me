**Bandit Level 1 → Level 2**

Level Goal

The password for the next level is stored in a file called - located in the home directory

Solution:
```bash
cat ./-

263JGJPfgU6LtdEvgfWU1XP5yac29mFx
# If a file is named '-', using any commands before it will fail as it views the hyphen as a command option.

# using ./ before the hyphen tells the command line that its a file

```