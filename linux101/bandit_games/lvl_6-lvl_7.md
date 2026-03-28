Bandit Level 6 → Level 7

Level Goal

The password for the next level is stored somewhere on the server and has all of the following properties:

owned by user bandit7
owned by group bandit6
33 bytes in size

```bash
find / -type f -user bandit7 -group bandit6 -size 33c 

# Using the find command, you can search for the file using the above options

# find / = find in all directories

# However this would try to search every directory but would fail as we dont have permissions to access every directory, including hidden directories.

# Therefore we redirect all permission denied errors using 2>/dev/null

/var/lib/dpkg/info/bandit7.password

cat /var/lib/dpkg/info/bandit7.password

morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj



```