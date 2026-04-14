Bandit Level 12 → Level 13

Level Goal

The password for the next level is stored in the file data.txt, which is a hexdump of a file that has been repeatedly compressed. For this level it may be useful to create a directory under /tmp in which you can work. Use mkdir with a hard to guess directory name. Or better, use the command “mktemp -d”. Then copy the datafile using cp, and rename it using mv (read the manpages!)



```bash
cd /tmp/RSdir

xxd -r data.txt > data2.txt

file data2.txt 
data2.txt: gzip compressed data, was "data2.bin", last modified: Fri Apr  3 15:17:20 2026, max compression, from Unix, original size modulo 2^32 566

mv data2.txt data2.gz

gzip -d data2.gz

file data2
data2: bzip2 compressed data, block size = 900k

bzip2 -d data2
bzip2: Cant guess original name for data2 -- using data2.out

file data2.out 
data2.out: gzip compressed data, was "data4.bin", last modified: Fri Apr  3 15:17:20 2026, max compression, from Unix, original size modulo 2^32 20480

mv data2.out data2.gz

gzip -d data2.gz

file data2
data2: POSIX tar archive (GNU)

tar -x -f data2

file data5.bin 
data5.bin: POSIX tar archive (GNU)

tar -x -f data5.bin

file data6.bin
data6.bin: bzip2 compressed data, block size = 900k

bzip2 -d data6.bin
bzip2: Cant guess original name for data6.bin -- using data6.bin.out

file data6.bin.out
data6.bin.out: POSIX tar archive (GNU)

tar -x -f data6.bin.out

file data8.bin 
data8.bin: gzip compressed data, was "data9.bin", last modified: Fri Apr  3 15:17:20 2026, max compression, from Unix, original size modulo 2^32 49

mv data8.bin data8.gz

gzip -d data8.gz

file data8
data8: ASCII text


cat data8
The password is FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn
```