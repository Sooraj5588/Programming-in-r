# Load iris dataset
data <- iris

# lm means linear model ,Create linear regression model
# Predict Petal.Length using Sepal.Length
model <- lm(Petal.Length ~ Sepal.Length, data = data)

# Display summary of regression model
summary(model)

# Predict petal lengths using the model
data$predicted_petal_length <- predict(model)

# Head is used to show the first 6 rows .Display first 6 rows of dataset
head(data)

# Plot graph
plot(data$Sepal.Length,
     data$Petal.Length,
     xlab = "Sepal Length",
     ylab = "Petal Length",
     main = "Linear Regression using Iris Dataset",
     pch = 16)

#abline= Draw regression line
abline(model, col = "blue")
