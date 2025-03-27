# Midterm Exam

# Question 1:
listMaker = function(n){
  vect = c(1,1)
  for(i in 3:10){vect[i] = ((n*vect[i-1])+((n**2)*vect[i-2]))}
    
  return(vect)
}
listMaker(3)

# Question 2:

# a) 
Scores = list("Homework" = c(70, 80, 90, 100), "Tests" = c(75, 85, 95))
Scores

# b) 
Scores$"Group Projects" = c(90, 95, 100)
Scores

# c)
Scores.means = lapply(Scores, mean)
Scores.sd = lapply(Scores, sd)
Scores.stats = matrix(nrow=2)

Scores.stats = rbind("mean" = Scores.means, "st.dev" = Scores.sd)
Scores.stats

# Question 3

# a)
pbinom(q=10, size=200, prob=0.3)

# b) 

# c)

# d)



# Question 4
# a)
library(readxl)
Dose = read_excel("Dose.xlsx")
Dose

# b)
drugs = list(Drug, Dose, Average)
aggregate(Dose, by=drugs, FUN=mean)
