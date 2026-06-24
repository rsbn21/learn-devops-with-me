Bandit Level 16 → Level 17

Level Goal

The credentials for the next level can be retrieved by submitting the password of the current level to a port on localhost in the range 31000 to 32000. First find out which of these ports have a server listening on them. Then find out which of those speak SSL/TLS and which don’t. There is only 1 server that will give the next credentials, the others will simply send back to you whatever you send to it.


```bash
nmap localhost -p31000-32000 # this looks at all open ports between the specified ranges
#OUTPUT:
Starting Nmap 7.94SVN ( https://nmap.org ) at 2026-05-16 20:51 UTC
Nmap scan report for localhost (127.0.0.1)
Host is up (0.00015s latency).
Not shown: 996 closed tcp ports (conn-refused)
PORT      STATE SERVICE
31046/tcp open  unknown
31518/tcp open  unknown
31691/tcp open  unknown
31790/tcp open  unknown
31960/tcp open  unknown

# now we need to see which are speaking with SSL/TLS 
# We need to manually connect to ssl

openssl s_client -connect localhost:31046
#OUTPUT:
CONNECTED(00000003)
4067F0F7FF7F0000:error:0A0000F4:SSL routines:ossl_statem_client_read_transition:unexpected message:../ssl/statem/statem_clnt.c:398:
---
no peer certificate available
# Cannot connect as not speaking using SSL/TLS

openssl s_client -quiet localhost:31518
# "-quiet" is used because by default, the command used interactive mode, and so any key given starting with K or k, it will show KEYUPDATE
# Therefore -quiet removes this issue
# OUTPUT:
Cant use SSL_get_servername
depth=0 CN = SnakeOil
verify error:num=18:self-signed certificate
verify return:1
depth=0 CN = SnakeOil
verify return:1
kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx
kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx
# After we give it the password, it repeats it back therefore not correct port

# trying port 31691 gives an error

openssl s_client -quiet localhost:31790
# OUTPUT:
Cant use SSL_get_servername
depth=0 CN = SnakeOil
verify error:num=18:self-signed certificate
verify return:1
depth=0 CN = SnakeOil
verify return:1
kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx
Correct!
-----BEGIN RSA PRIVATE KEY-----

# This port is the correct one, but it gives a private RSA key
# Save this key on the local machine
# Change the permissions of it so that only owner has read and write permissions

chmod 600 bandit17key.private

ssh -i bandit17key.private -p 2220 bandit17@bandit.labs.overthewire.org 

cat /etc/bandit_pass/bandit17
# PASSWORD 
EReVavePLFHtFlFsjn3hyzMlvSuSAcRD
```