Bandit Level 17 → Level 18

Level Goal

There are 2 files in the homedirectory: passwords.old and passwords.new. The password for the next level is in passwords.new and is the only line that has been changed between passwords.old and passwords.new

```bash

diff "passwords.new" "passwords.old" # diff commands shows difference between files 

42c42
< x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO
---
> KxOU4IzbXM8j8HeAWPAXTd1eC77mp1qV
# line after < shows difference in the first file you put in the argument therefore this is the change in files

#password
x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO







```