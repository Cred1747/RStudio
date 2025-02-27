# S3 Example using the mtcars dataset

# Create an S3 object representing a car
car_s3 <- list(
  model = "Mazda RX4",
  mpg = 21,
  cyl = 6,
  hp = 110
)

# Assign a class to the object
class(car_s3) <- "car"

# Define a print method for the S3 class
print.car <- function(obj) {
  cat("Car Model:", obj$model, "\n")
  cat("Miles Per Gallon (MPG):", obj$mpg, "\n")
  cat("Cylinders:", obj$cyl, "\n")
  cat("Horsepower:", obj$hp, "\n")
}

# Test the S3 method
print(car_s3)

# Check the object class
class(car_s3)
