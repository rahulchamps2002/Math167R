#Question 1
# a) Create a vector with numbers 1-30 and then turn them into a 5 by 6 matrix
m = c(1:30)
m
M = matrix(m, nrow = 5, ncol = 6, byrow = TRUE)
M

# b) Label the columns and rows of the matrix
colnames(M) = c("Day #1", "Day #2", "Day #3", "Day #4", "Day #5", "Day #6")
rownames(M) = c("Production Line #1", "Production Line #2", "Production Line #3", "Production Line #4", "Production Line #5")
M

# c) use indexing to access all the elements in the 4th row
M[4, , drop = FALSE]

# d) Find the sum of all rows and add it to the end of the matrix
sums = rowSums(M)
M = cbind(M, Total = sums)
M

# Question 2
# a) create an empty matrix
struct = matrix( , nrow = 10, ncol = 5)
struct

# b) use apply() to fill in matrix with 5 random samples of size 10 from the standard normal distribution (Use rnorm())
struct = apply(struct, 2, function(x) rnorm(10, mean = 0, sd = 1))
struct

# c) use apply() to find the standard deviation of the columns
colstd = apply(struct, 2, sd)
colstd


# Question 3
# a) read the excel file
install.packages('readxl')
library(readxl)
Crime.rate = as.data.frame(read_excel('txtFiles/crime_rate.xlsx'))
Crime.rate

# b) sort the dataframe in descending order
Crime.rate.sorted = Crime.rate[order(-Crime.rate$`Violent Crime`), ]
Crime.rate.sorted

# c) write both dataframes to an Excel file with one sheet being called Original and the other called Sorted 
install.packages('writexl')
library(writexl)
sheets = list("Original" = Crime.rate, "Sorted" = Crime.rate.sorted)
write_xlsx(sheets, path = 'txtFiles/crime_rate_updated.xlsx')
