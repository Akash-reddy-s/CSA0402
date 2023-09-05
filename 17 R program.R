values <- 1:24
dimensions <- c(3, 4, 3)
dim_names <- list(  
  c("Row1", "Row2", "Row3"),
  c("Col1", "Col2", "Col3", "Col4"),
  c("Depth1","Depth2","Depth3")
)
my_array <- array(values, dim = dimensions, dimnames = dim_names)
print(my_array)
