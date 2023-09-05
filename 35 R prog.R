library(reshape2)
data(ChickWeight)
ordered_data <- ChickWeight[order(ChickWeight$weight), ]
last_6_records <- tail(ordered_data, 6)
print(last_6_records)

melted_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))
print(melted_data)

mean_weight_by_diet <- dcast(melted_data, Diet ~ ., fun.aggregate = mean, value.var = "value")
print(mean_weight_by_diet)

library(dplyr)
mode_weight_by_diet <- melted_data %>%
  group_by(Diet) %>%
  summarize(mode_weight = as.numeric(names(table(value))[table(value) == max(table(value))]))
print(mode_weight_by_diet)

