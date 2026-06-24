Bandit Level 14 → Level 15

Level Goal

The password for the next level can be retrieved by submitting the password of the current level to port 30000 on localhost.


```bash
ssh -p 2220 bandit14@bandit.labs.overthewire.org

nc localhost 30000
# nc allows to read from and write to network connections
# provides a connection into where you want
# we use nc here to connect to localhost
# blank line should appear, then enter previous password

Correct!
8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo

```