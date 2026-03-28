Bandit Level 8 → Level 9

Level Goal

The password for the next level is stored in the file data.txt and is the only line of text that occurs only once

```bash
sort data.txt | uniq -u

4CKMh1JI91bUIZZPXDqGanal4xvAg0JM

# uniq command either removes or shows repeated lines

# uniq -u option shows unique lines but uniq -u only shows lines that are unique if they are consecutive

# we use sort command first so that it sorts it to be in order of repeated which then allows the uniq command to show the unique line
```