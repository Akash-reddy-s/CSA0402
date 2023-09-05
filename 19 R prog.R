my_list <- list(
  numeric_vector = c(1.5, 2.7, 3.2),
  character_matrix = matrix(c("apple", "banana", "cherry"), nrow = 1),
  logical_matrix = matrix(c(TRUE, FALSE, TRUE), nrow = 1),
  custom_function = function(x) x^2
)
print("Content of the list:")
print(my_list)
