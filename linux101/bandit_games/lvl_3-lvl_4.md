Bandit Level 3 → Level 4

Level Goal

The password for the next level is stored in a hidden file in the inhere directory.

Solution:
```bash
cd inhere
# switch to the inhere directory 

ls -a
# ls is used to look at the contents of a directory but by itself cannot be used to view hidden files
# -a allows viewing of hidden files

cat ...Hiding-From-You 
2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ
# cat inside the hidden file
```