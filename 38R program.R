data("Titanic")

survival_counts <- apply(Titanic, c("Class", "Survived"), sum)
barplot(survival_counts, beside = TRUE,
        col = c("lightblue", "lightgreen"),
        legend.text = TRUE,
        args.legend = list(x = "topright"),
        main = "Survived on Titanic by Passenger Class",
        xlab = "Passenger Class", ylab = "Count")

survival_counts <- apply(Titanic, c(2, 4, 1), sum)
survival_matrix <- as.matrix(survival_counts)
barplot(survival_matrix, beside = TRUE, col = c("lightblue", "lightgreen"),
        main = "Survived on Titanic by Passenger Class and Gender",
        xlab = "Passenger Class", ylab = "Count",
        legend.text = TRUE, args.legend = list(x = "topright"),
        legend = colnames(survival_matrix))

titanic_df <- as.data.frame(Titanic)
age_data <- as.numeric(na.omit(titanic_df$Age))
hist(age_data, col = "lightblue", breaks = 20,
     main = "Distribution of Age in Titanic Dataset",
     xlab = "Age", ylab = "Frequency")