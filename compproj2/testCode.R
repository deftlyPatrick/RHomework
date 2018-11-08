# ###I)
# library(ggplot2)
# a <- 0
# b <- 5
# sample_size <- 500
# numList <- runif(sample_size, min = a, max = b)
# ###II)
# number_trials <- 15
# p <- 0.2
# rbinom(sample_size, size = number_trials, prob = p)
# ###III)
# lambda <- 5
# rexp(sample_size, rate = lambda)
# ###IV)
# mu <- 2
# rpois(sample_size, mu)



###Algorithm)

#Sample size = 500
sample_size <- 500
#U(0.5)
a <- 0
b <- 5
#Binomial with number of trials = 15, p = 0.2
number_trials <- 15
p <- 0.2
mu <- 2
#Exp(5)
lambda <- 5

#1)
numList <- runif(sample_size, min = a, max = b)

storedData = rep(numList, sample_size)
for (i in 1:storedData){
  storedData[i] = i
  #2)
  rbinom(sample_size, size = number_trials, prob = p)
  #3)
  rexp(sample_size, rate = lambda)
  #4)
  rpois(sample_size, mu)
  #####################################################
  mean(storedData)
}


# 
# ###I)
# ```{r}
# library(ggplot2)
# a <- 0
# b <- 5
# sample_size <- 500
# numList <- runif(sample_size, min = a, max = b)
# ```
# ###II)
# ```{r}
# number_trials <- 15
# p <- 0.2
# rbinom(sample_size, size = number_trials, prob = p)
# ```
# ###III)
# ```{r}
# lambda <- 5
# rexp(sample_size, rate = lambda)
# ```
# ###IV)
# ```{r}
# mu <- 2
# rpois(sample_size, mu)
# ```
# ###Algorithm)
# ```{r}
# storedData = rep(NA, sample_size)
# for (i in 1:sample_size){
#   storedData[i] = i
#   n <- 5
#   m <- 50
#   average = storedData/n
#   average2 = storedData/m
#   vector5 <- average
#   vector50 <- average2
# }
# ```
