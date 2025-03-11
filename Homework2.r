# Question 1
# a)
args(runif)

# b)
nums <- runif(10, -1, 1)
print(nums)

# c)
nums2 <- runif(n=10, min=-1, max=1)
print(nums2)

# Question 2
(2**(-9%%4) == sqrt(64)) & (2**(-9%%4) != log2(32))

# Question 3
G <- function(u){
  if (u <= 2){
    return(u)
  } else {
    return(u+1)
  }
}

print(G(0))
print(G(2))
print(G(3))

# Question 4
# a)
my_env$x <- 2
my_env$f <- function(y){my_env$x**y}
my_env$f(5)

# b)
ls(my_env)

# c)
environment(my_env$f)

# d)
print(my_env)

# e)
rm(list=ls(envir=my_env), envir=my_env)
ls(my_env)
