data_table <- data.frame(
  Month = 1:12,
  Spends = c(1000, 4000, 5000, 4500, 3000, 4000, 9000, 11000, 15000, 12000, 7000, 3000),
  Sales = c(9914, 40487, 54324, 50044, 34719, 42551, 94871, 118914, 158484, 131348, 78504, 36284)
)

print(data_table)
model <- lm(Sales ~ Spends, data = data_table)
summary(model)
new_data <- data.frame(Spends = 13500)
predicted_sales <- predict(model, newdata = new_data)
print(predicted_sales)
