# Load the airquality dataset
data(airquality)

# (i) Compute the mean temperature (without using built-in function)
mean_temp <- sum(airquality$Temp, na.rm = TRUE) / length(airquality$Temp)
cat("Mean Temperature:", mean_temp, "\n")

# (ii) Extract the first five rows from airquality
first_five_rows <- head(airquality, n = 5)
print(first_five_rows)

# (iii) Extract all columns from airquality except Temp and Wind
subset_data <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
print(subset_data)

# (iv) Find the coldest day during the period
coldest_day <- airquality$Day[which.min(airquality$Temp)]
cat("Coldest Day:", coldest_day, "\n")

# (v) Count the number of days with wind speed greater than 17 mph
wind_gt_17_count <- sum(airquality$Wind > 17, na.rm = TRUE)
cat("Number of days with wind speed greater than 17 mph:", wind_gt_17_count, "\n")
