# Load the built-in women dataset
data("women")

# Create a factor corresponding to the height variable
height_factor <- cut(women$height, breaks = c(55, 60, 65, 70, 75), labels = c("Short", "Average", "Tall", "Very Tall"))

# Print the factor
print(height_factor)
