install.packages("readxl")
install.packages("aplpack", dependencies = TRUE)

library(readxl)
library(aplpack)

# Question 1

# a)
gravity_data <- read_excel("Github/Math167R/txtFiles/gravity.xlsx")
gravity <- as.numeric(gravity_data[[1]])
gravity <- na.omit(gravity)

stem(gravity)
stem.leaf(gravity, unit = 0.01)

# b)
hist(gravity, probability = TRUE, col = "grey", main = "Density Histogram for gravity", xlab = "gravity", ylab = "Density", xlim=c(0.2, 0.9))

# Question 2
# a)
diameter = read_excel("Github/Math167R/txtFiles/diameters.xlsx")
diameters = as.numeric(diameter[[1]])

stripchart(diameters, method = "stack", pch = 1, col = "blue", main = "The dotplot for Diameters", xlab = "diameters", xlim = c(2, 14))

# b) 
hist(diameters, probability = TRUE, col = "grey", main = "Relative Frequency Histogram for Diameters", xlim = c(0, 14), ylim = c(0.0, 0.3), ylab = "relative frequency", yaxt = "n")
axis(side = 2, at = c(0.0, 0.1, 0.2, 0.3), labels = c("0.0", "0.1", "0.2", "0.3"))

