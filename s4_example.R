# S4 Example using the iris dataset

# Define an S4 class for a flower
setClass(
  "Flower",
  slots = list(
    Species = "character",
    Sepal.Length = "numeric",
    Sepal.Width = "numeric",
    Petal.Length = "numeric",
    Petal.Width = "numeric"
  )
)

# Create an S4 object from the iris dataset
flower_s4 <- new("Flower",
                 Species = "setosa",
                 Sepal.Length = 5.1,
                 Sepal.Width = 3.5,
                 Petal.Length = 1.4,
                 Petal.Width = 0.2
)

# Display the S4 object
flower_s4

# Check if it is an S4 object
isS4(flower_s4)
