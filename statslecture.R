# function grep() searches for matches to argument 'pattern' within each element of a character vector

# example: grep(pattern, x, ignore.case=FALSE, perl=FALSE, value=FALSE, fixed=FALSE, userBytes=FALSE, invert=FALSE)

(my=sample(1:10,size=5))
set.seed(1);(my=sample(1:10,size=5))
set.seed(2);(my=sample(1:10,size=5))


# Probability Distribution or Probability Mass function (pmf) of a discrete rv 
# variable X with pmf p(x) is defined for every number 

#Discrete:
# pmf = p(x) = P(X=x)
# cdf = F(x) = P(X <= x)

# Continuous
# pdf = f(x) = P(a <= x <= b)
# cdf = F(x) = P(X <= x)


#Problem:
# S = success = "single vehicle accident"
# p = 7/10 = 0.7
# X = the # of S's among 15
# X~Bin(n=15, p=0.7)
# a) P(X <= 4) <-- cdf
pbinom(q=4, size=15, prob=0.7)
# b) P(X=4) <-- pmf
dbinom(x=4, size=15,prob=0.7)
# c) P(2 <= X <= 4) <-- cdf
pbinom(q=4,size=15,prob=0.7)-pbinom(q=2, size=15,prob=0.7)
# d) P(X >= 2) <-- cdf
pbinom(q=2,size=15,prob=0.7,lower.tail=FALSE)

# In class activity
# 1 in 5 children
# Sample size = 25
# X~Bin(25, 0.2)

# a) P(X<=9)
pbinom(q=9, size=25, prob=0.2)

qnorm(0.75)

# Problem 2:
# mu = 0.3, std = 0.06
# X~N(mu, std^2)

# a) P(X>0.5)

# b) P(x<=0.2)

# c) 


x = seq(from=-3, to=3, by=0.01)
plot(x,y=dnorm(x),type='l')
