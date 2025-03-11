# SCAN function
# it reads data into a vector or list from the console or file
# usage scan(file=" ", what=double(), sep="", skip=0, nlines=0, na.strings="NA", blank.lines.skip=TRUE)
# file= the name of the file
# what= is a list of length the number of variables specifying their type
# sep= used to specify a character which delimits fields
scan(file="txtFiles/cities.txt", what=character(), sep=',', quiet=TRUE)
roster=scan(file='txtFiles/roster.txt',what=list('','',numeric()), sep=',', skip=1)
roster


pop=scan(file='txtFiles/population.txt', skip=1, what=list('','',numeric(0)), sep=',')
pop.data=as.data.frame(pop)
pop.names=scan(file='txtFiles/population.txt', nlines = 1, what="", sep=',')
names(pop.data)=pop.names
pop.data


a=rep(1:4, length.out=20)
a
dim(a)=c(4,5)
a

b=rep(5:9, each=2)
b
b_matrix=matrix(b, nrow=5, ncol=2, byrow=TRUE)
b_matrix

a*b_matrix
