# Question 1
# a) create the vector
Opinions=c("agree", "agree", "missing", "disagree", "neutral", "disagree","neutral", "agree", "missing", "neutral")
# b) count the number of missing values
counter=0
for(opinion in Opinions){
  if(opinion == "missing"){
    counter = counter + 1
  }
}
counter
# c) Make a new vector without the missing values and print the vector
Opinions.updated=c()
for(opinion in Opinions){
  if(opinion != "missing"){
    Opinions.updated=c(Opinions.updated, opinion)
  }
}
Opinions.updated

# Question 2
# a) Create the Roster list
Roster=list(
  Name=c("Mary", "John", "Lisa"),
  GPA=c(3.5, 3.7, 2.9),
  Test.Scores=list(
    Test1=c(70, 80, 60),
    Test2=c(100, 95, 92)
  )
)
str(Roster)

# b) Use indexing to find information about Mary
Mary.Info=c(
  Student=Roster$Name[1],
  GPA=Roster$GPA[1],
  Test1=Roster$Test.Scores$Test1[1],
  Test2=Roster$Test.Scores$Test2[1]
)
print(Mary.Info)

# c) use lapply or sapply functions on Test.Scores
mean.Test.Scores=lapply(X=Roster$Test.Scores, FUN=mean)
mean.Test.Scores

# d) adding a new vector called Standing to Roster
Roster=list(Roster, Standing=c("senior", "freshman", "sophomore"))
str(Roster)
