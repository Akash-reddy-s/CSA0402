set.seed(123)
num_samples <- 10
mean_value <- 0
sd_value <- 1
random_numbers <- rnorm(num_samples, mean = mean_value, sd = sd_value)
value_counts <- table(random_numbers)
cat("Generated random numbers:\n")
print(random_numbers)

cat("\nOccurrences of each value:\n")
print(value_counts)

