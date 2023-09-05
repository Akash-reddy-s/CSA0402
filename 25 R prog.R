# Create the initial exam_data data frame
exam_data <- data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)

# a. Extract 3rd and 5th rows with 1st and 3rd columns
extracted_data <- exam_data[c(3, 5), c(1, 3)]
print("Extracted data:")
print(extracted_data)

# b. Add a new column named country
Country <- c("USA", "USA", "USA", "USA", "UK", "USA", "USA", "India", "USA", "USA")
exam_data$country <- Country

# c. Add new row(s) to the existing data frame
new_exam_data <- data.frame(name = c('Robert', 'Sophia'), score = c(10.5, 9), attempts = c(1, 3), qualify = c('yes', 'no'))
updated_exam_data <- rbind(exam_data, new_exam_data)

# d. Sort the data frame by name and score
sorted_exam_data <- exam_data[order(exam_data$name, exam_data$score), ]

# e. Save the information of the data frame in a file
write.csv(exam_data, "exam_data.csv")

# Display the information of the file
file_contents <- read.csv("exam_data.csv")
print("Contents of the file:")
print(file_contents)

