# Generate a random sample from LETTERS
set.seed(123) # for reproducibility
random_letters <- sample(LETTERS, 100, replace = TRUE)

# Create a factor from the random sample
random_factor <- factor(random_letters)

# Extract the first five levels of the factor
five_levels <- levels(random_factor)[1:5]

# Print the extracted levels
print(five_levels)
