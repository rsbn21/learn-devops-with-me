Bandit Level 15 → Level 16

Level Goal

The password for the next level can be retrieved by submitting the password of the current level to port 30001 on localhost using SSL/TLS encryption.


```bash
openssl s_client localhost:30001
# openssl is an open source cli tool - can generate private keys, install ssl/tls certificates etc

# openssl s_client = connects to given client using ssl/tls encryption

# this gives a blank line which you enter the current levels password

read R BLOCK
8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo # current password
Correct! # output
kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx




```