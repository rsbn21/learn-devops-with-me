## Piping
- Allows to pass output of one command to the input of another command using | symbol 

- Allows usage of advanced data operations and storing in variables


```bash
search_logs(){
    local search_term="$1" # LOCAL VARIABLE CALLED SEARCH_TERM WHICH WILL BE THE PARAMETER GIVEN
    grep "$search_term" log.txt | awk '{ print $2 }' # USING GREP TO FIND THE PARAMETER WORD GIVEN IN THE FOLLOWING FILE 
    # AFTER FIDNING THE GIVEN PARAMETER, IT PASSES THIS TO COMPARE AND PRINT THE SECOND COLUMN WHEN THIS WORD COMES UP
}

search_logs "ERROR"
```