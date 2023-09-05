data("airquality")
if (is.data.frame(airquality)) {
  print("airquality is a data frame.")
} else {
  print("airquality is not a data frame.")
}
ordered_airquality <- airquality[order(airquality$Month, airquality$Day), ]
cleaned_airquality <- ordered_airquality[, !(names(ordered_airquality) %in% c('Solar.R', 'Wind'))]
print(cleaned_airquality)
