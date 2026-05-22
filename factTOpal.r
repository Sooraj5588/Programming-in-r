# Take input number from user
num <- as.integer(readline("Enter a number: "))

# Store original number
original <- num

# Find factorial
fact <- 1

for(i in 1:num)
{
    fact <- fact * i
}

# Display factorial
print(fact)

# Convert factorial to character otherwise it can't be processed further
fact_char <- as.character(fact)

# Reverse factorial number .as i mentioned earlier strsplit will split and collapse joins,and rev does its job.
pal <- paste(rev(strsplit(fact_char, "")[[1]]), collapse = "")

# Check palindrome or not condition
if(pal == fact_char)
{
    cat("The factorial is palindrome")
}
else
{
    cat("The factorial is not palindrome")
}
