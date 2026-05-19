word <- readline("Enter the word: ")

revWord <- paste(rev(strsplit(word, "")[[1]]), collapse = "")

if(word == revWord)
{
    cat("The word is palindrome")
}
else
{
    cat("The word is not palindrome")
}
