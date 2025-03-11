# Question 1
# a) Read the ratings.txt file
ratings = scan(file="txtFiles/ratings.file")
ratings
length(ratings)

# b) Create a factor going from Undesireable > Adequet > Good > Most Desireable
ratings_factor = factor(ratings, levels = c('"Undesirable"', '"Adequate"', '"Good"', '"Most desirable"'), ordered = TRUE)
levels(ratings_factor)
ratings_factor
str(ratings_factor)

# c) Express ratings as factor numbers using the factor()
ratings_factor_ints = factor(ratings_factor, levels = c('"Undesirable"', '"Adequate"', '"Good"', '"Most desirable"'), labels = c(0, 1, 2, 3))
ratings_factor_ints
str(ratings_factor_ints)
ratings_numerics = as.numeric(as.character(ratings_factor_ints))
ratings_numerics

# Question 2
# a)
fruitUnstacked <- read.table("txtFiles/fruit_unstacked.txt", sep = ',', header = TRUE)
fruitUnstacked

# b)
variety_column <- fruitUnstacked$Variety
stacked_data <- stack(fruitUnstacked[, -1])
fruitStacked <- data.frame(Yield = stacked_data$values, Pesticide = gsub("Pesticide.", "P", stacked_data$ind), Variety = rep(variety_column, times = 4))
print(fruitStacked)

# c)
# Save the stacked data frame to a file
write.table(fruitStacked, file = "fruit_stacked.txt", quote = TRUE, row.names = FALSE, sep = ",")

# d)
average_yield <- aggregate(Yield ~ Variety + Pesticide, data = fruitStacked, FUN = mean)
colnames(average_yield) <- c("Variety", "Pesticide", "Average")
print(average_yield)

# e)
yieldByVariety <- unstack(fruitStacked, Yield ~ Variety)
yieldByPesticide <- unstack(fruitStacked, Yield ~ Pesticide)

print("Yield by Variety:")
print(yieldByVariety)

print("\nYield by Pesticide:")
print(yieldByPesticide)
