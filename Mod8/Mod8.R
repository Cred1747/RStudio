# Step 1: Install and load packages
library(plyr)

# Step 1: Import Assignment 6 Dataset from working directory
Student_assignment_6 <- read.table("Assignment 6 Dataset.txt", header = TRUE, sep = ",")

# View the data
Student_assignment_6

# Calculate mean of Grade by Sex
StudentAverage <- ddply(Student_assignment_6, "Sex", transform, Grade.Average = mean(Grade))

# Write the resulting output to a file
write.table(StudentAverage, "Students_Gendered_Mean.csv", sep = ",", row.names = FALSE)

# Step 2: Filter dataset for names containing the letter "i"
i_students <- subset(Student_assignment_6, grepl("i", Student_assignment_6$Name, ignore.case = TRUE))

# Step 3: Write the filtered names dataset to a CSV file
write.table(i_students, "Students_With_I.csv", sep = ",", row.names = FALSE)
