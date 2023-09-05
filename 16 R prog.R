matrix_5x4 <- matrix(1:20, nrow = 5, ncol = 4, byrow = TRUE)
rownames(matrix_5x4) <- c("Row1", "Row2", "Row3", "Row4", "Row5")
colnames(matrix_5x4) <- c("Col1", "Col2", "Col3", "Col4")

matrix_3x3 <- matrix(11:19, nrow = 3, ncol = 3)
rownames(matrix_3x3) <- c("R1", "R2", "R3")
colnames(matrix_3x3) <- c("C1", "C2", "C3")

matrix_2x2 <- matrix(101:104, nrow = 2, ncol = 2, byrow = FALSE)
rownames(matrix_2x2) <- c("Row_A", "Row_B")
colnames(matrix_2x2) <- c("Col_X", "Col_Y")

cat("5x4 Matrix (filled by rows):\n")
print(matrix_5x4)

cat("\n3x3 Matrix (with labels):\n")
print(matrix_3x3)

cat("\n2x2 Matrix (filled by column):\n")
print(matrix_2x2)
