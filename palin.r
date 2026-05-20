# Take input word from user
word <- readline("Enter the word: ")

# Split the word into characters
# Example: "madam" → "m" "a" "d" "a" "m"
# rev() reverses the characters
# paste(..., collapse="") joins them back into one word
revWord <- paste(rev(strsplit(word, "")[[1]]), collapse = "")

# Check whether original word and reversed word are same
if(word == revWord)
{
    # Executes if condition is TRUE
    cat("The word is palindrome")
}
else
{
    # Executes if condition is FALSE
    cat("The word is not palindrome")
}
