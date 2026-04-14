Bandit Level 11 → Level 12

Level Goal

The password for the next level is stored in the file data.txt, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions

```bash
cat data.txt

Gur cnffjbeq vf 7k16JArUVv5LxVuJfsSVdbbtaHGlw9D4
# the current output

cat data.txt | tr "[A-Za-z]" "[N-ZA-Mn-za-m]"
# tr command translates what is given
# [A-Za-z]" "[N-ZA-Mn-za-m]" - this process translates the letters by rotating them by 13 letters

The password is 7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4
```