# Load necessary libraries
library(ggplot2)

# Load the airquality dataset
data(airquality)

# (i) Find missing values and replace or drop them
missing_percent <- colMeans(is.na(airquality)) * 100
print(missing_percent)

for (col in names(airquality)) {
  if (missing_percent[col] < 10) {
    mean_value <- mean(airquality[, col], na.rm = TRUE)
    airquality[is.na(airquality[, col]), col] <- mean_value
  } else {
    airquality <- airquality[complete.cases(airquality[, col]), ]
  }
}

# (ii) Apply linear regression on "Ozone" and "Solar.R"
model <- lm(Ozone ~ Solar.R, data = airquality)
summary(model)

# (iii) Plot Scatter plot between Ozone and Solar with regression line
ggplot(data = airquality, aes(x = Solar.R, y = Ozone)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(x = "Solar.R", y = "Ozone", title = "Scatter Plot with Linear Regression")
