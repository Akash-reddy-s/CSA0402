# Load the built-in ChickWeight dataset
data("ChickWeight")

# Ensure that Diet is treated as a factor
ChickWeight$Diet <- as.factor(ChickWeight$Diet)

# Create a multiple regression model
reg_model <- lm(weight ~ Time + Diet, data = ChickWeight)

# Summary of the regression model
summary(reg_model)

# b. Predict weight for Time=10 and Diet=1
new_data <- data.frame(Time = 10, Diet = factor(1))
predicted_weight <- predict(reg_model, newdata = new_data)

cat("Predicted weight for Time = 10 and Diet = 1:", predicted_weight, "\n")

# c. Find the error in the model for the same data point
actual_weight <- ChickWeight$weight[ChickWeight$Time == 10 & ChickWeight$Diet == 1]
error <- actual_weight - predicted_weight

cat("Error in the model:", error, "\n")

