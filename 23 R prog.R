# Create the data for the array
column1 <- c(1, 4, 7)
column2 <- c(2, 5, 8)
column3 <- c(3, 6, 9)
column4 <- c(10, 13, 16)
column5 <- c(11, 14, 17)
column6 <- c(12, 15, 18)

# Combine the columns into two tables
table1 <- cbind(column1, column2, column3)
table2 <- cbind(column4, column5, column6)

# Create a 3-dimensional array using the tables
array_data <- array(c(table1, table2), dim = c(3, 3, 2))

# Display the content of the array
print(array_data)
