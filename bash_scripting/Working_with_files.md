## Reading Files
Important task in scripting -> allows to access and extract valuable information from files

```bash
read_file() {

    local file_path="$1"

    while IFS= read -r line; do # We are looping to read each line
    # IFS is to leave any white spaces
    # -r will prevent any / from exiting 
        echo "$line"
    done < "file_path" # we want the loop to read from the file_path parameter given
}

read_file "./log.txt"
```


```bash
process_file() {
    local file_path="$!"

    cat "$file_path" | while IFS= read -r line; 
    # read contents of the file and then grep to read each line
        echo "Processing line: $line"
    done
}

process_file "./log.txt"

# This does the same thing as the above
```

## Writing files
We can write into files via redirection

```bash
write_to_file() {
    local file_path="$1"
    local data="$2"

    echo "$data" >> "$file_path" # the data parameter will be appended into the file path given
}

write_to_file "read.txt" "1234"
```

## File Checksums
File Checksums are cryptographic hashes that provide unique fingerprint for a file. 

-> This allows to verify the authenticy of a file
-> Every file has a different file checksum

### How to generate a file checksum using 'md5sum' command

```bash
calculate_md5sum() {
    local file_path="$1"
    md5sum "$file_path" 
}

calculate_md5sum "read.txt

```

### How to generate a file checksum using 'sha256' command

```bash
calculate_sha256sum() {
    local file_path="$1"
    sha256sum "$file_path" 
}

calculate_md5sum "read.txt"
```

### Comparing checksums
File Checksums can be compared to check the integrity of files over time or across systems

```bash
compare_checksums() {
    local checksum1="$1"
    local checksum2="$2"

    if [[ "$checksum1" == "$checksum2" ]]; then
        echo "Checksums match. Files is intact"
    else echo "Checksums do not match. File integrity compromised"
    fi
}

compare_checksums "123" "123" # As these match, it would print the first echo statement
```
