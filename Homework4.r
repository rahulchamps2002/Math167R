# Question 1
# a) Create a data frame named Air.Pollution from the data set air_pollution.txt
Air.Pollution=scan(file = 'txtFiles/air_pollution.txt', skip=1, what=list('','',0,0), sep = ',')
Air.Pollution=as.data.frame(Air.Pollution)
Air.Pollution.names=scan(file='txtFiles/air_pollution.txt', nlines = 1, what="", sep=',')
names(Air.Pollution)=Air.Pollution.names
Air.Pollution

# b) Add one more column to the data frame that you’ve created. The column contains
# the amount of PM 2.5 particles in mg/𝑚3. The column name should be “PM25 (mg/m3)”.
Air.Pollution=cbind(Air.Pollution, "PM25 (mg/m3)" = c(65,NA,92,97,104,66,NA,NA,124))
Air.Pollution

# c) Using function rbind() (read the r documentation on the function) add one more
# row to the data frame
Air.Pollution=rbind(Air.Pollution, new_row=c('California', 'Glenn County', 6021, 28122, 34))
str(Air.Pollution)

# d) Save the dataframe in a new file called air_pollution_updated.txt.
write.table(Air.Pollution, file = "air_pollution_updated.txt", sep = ",", row.names = FALSE, quote = FALSE)

# Question 2
end.pnt=function(n){
  seq(2,3,along=numeric(n+1))
}

end.pnt(5)
