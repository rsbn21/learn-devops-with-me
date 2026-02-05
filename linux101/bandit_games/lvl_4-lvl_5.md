Bandit Level 4 → Level 5

Level Goal

The password for the next level is stored in the only human-readable file in the inhere directory. Tip: if your terminal is messed up, try the “reset” command.

Solution:

```bash
cd inhere

ls
-file00  -file01  -file02  -file03  -file04  -file05  -file06  -file07  -file08  -file09

'file ./*'
# the file command shows what type of file the file followed after is
# ./ is used as all the files in this directory start with a hyphen
# the asterisk after ./ is used to view all files 

./-file00: data
./-file01: data
./-file02: data
./-file03: data
./-file04: data
./-file05: data
./-file06: data
./-file07: ASCII text # as this is ASCII text, we know that its human readable text file
./-file08: data
./-file09: data

cat ./-file07
4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw
```