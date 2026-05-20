# Take number input from user
num <- as.integer(readline("Enter a number: "))

# Initialize factorial variable with 1
fact <- 1

# Loop from 1 to the entered number
for(i in 1:num)
{
    # Multiply current factorial value by i
    fact <- fact * i
}

# Display the factorial
cat("Factorial is:", fact)
