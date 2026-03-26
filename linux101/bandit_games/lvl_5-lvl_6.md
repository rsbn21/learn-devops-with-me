Bandit Level 5 → Level 6

Level Goal

The password for the next level is stored in a file somewhere under the inhere directory and has all of the following properties:

human-readable
1033 bytes in size
not executable

Solution:

```bash

cd inhere

ls
maybehere00  maybehere04  maybehere08  maybehere12  maybehere16
maybehere01  maybehere05  maybehere09  maybehere13  maybehere17
maybehere02  maybehere06  maybehere10  maybehere14  maybehere18
maybehere03  maybehere07  maybehere11  maybehere15  maybehere19

# the 'find' command allows user to find what they are looking by giving it arguments specific to what is needed.

find -type f ! -executable -readable -size 1033c

# '-type f' = the type of the object you are looking for with the 'f' finding the type: file

# '! -executable' = not executable

# -readable' = human readable

# '-size 1033c' = looks for the size you specify with the c representing bytes.

# This finds the following
./maybehere07/.file2

cat ./maybehere07/.file2
HWasnPhtq9AVKe0dmk45nxy20cvUa6EG

```