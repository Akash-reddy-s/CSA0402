# Load the built-in ChickWeight dataset
data("ChickWeight")

# Ensure that Diet is treated as a factor
ChickWeight$Diet <- as.factor(ChickWeight$Diet)

# Load necessary libraries
library(ggplot2)

# a. Create Box plot for "weight" grouped by "Diet"
boxplot_plot_a <- ggplot(ChickWeight, aes(x = Diet, y = weight, fill = Diet)) +
  geom_boxplot() +
  labs(title = "Box Plot of Weight Grouped by Diet", x = "Diet", y = "Weight")

# b. Create a Histogram for "weight" in Diet-1 category
histogram_plot_b <- ggplot(ChickWeight[ChickWeight$Diet == 1, ], aes(x = weight)) +
  geom_histogram(binwidth = 10, fill = "blue", color = "black") +
  labs(title = "Histogram of Weight in Diet-1", x = "Weight", y = "Frequency")

# c. Create Scatter plot for "weight" vs "Time" grouped by Diet
scatter_plot_c <- ggplot(ChickWeight, aes(x = Time, y = weight, color = Diet)) +
  geom_point() +
  labs(title = "Scatter Plot of Weight vs Time Grouped by Diet", x = "Time", y = "Weight")

# Display the plots
print(boxplot_plot_a)
print(histogram_plot_b)
print(scatter_plot_c)