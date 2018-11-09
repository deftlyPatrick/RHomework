# # ###I)
# # library(ggplot2)
# # a <- 0
# # b <- 5
# # sample_size <- 500
# # numList <- runif(sample_size, min = a, max = b)
# # ###II)
# # number_trials <- 15
# # p <- 0.2
# # rbinom(sample_size, size = number_trials, prob = p)
# # ###III)
# # lambda <- 5
# # rexp(sample_size, rate = lambda)
# # ###IV)
# # mu <- 2
# # rpois(sample_size, mu)
# 
# 
# 
# ###Algorithm)
# 
# #Sample size = 500
# sample_size <- 500
# #U(0.5)
# a <- 0
# b <- 5
# #Binomial with number of trials = 15, p = 0.2
# number_trials <- 15
# p <- 0.2
# mu <- 2
# #Exp(5)
# lambda <- 5
# 
# #1)
# numList <- runif(sample_size, min = a, max = b)
# 
# storedData = rep(numList, sample_size)
# for (i in 1:storedData){
#   storedData[i] = i
#   #2)
#   rbinom(sample_size, size = number_trials, prob = p)
#   #3)
#   rexp(sample_size, rate = lambda)
#   #4)
#   rpois(sample_size, mu)
#   #####################################################
#   mean(storedData)
# }
# 
# 
# # 
# # ###I)
# # ```{r}
# # library(ggplot2)
# # a <- 0
# # b <- 5
# # sample_size <- 500
# # numList <- runif(sample_size, min = a, max = b)
# # ```
# # ###II)
# # ```{r}
# # number_trials <- 15
# # p <- 0.2
# # rbinom(sample_size, size = number_trials, prob = p)
# # ```
# # ###III)
# # ```{r}
# # lambda <- 5
# # rexp(sample_size, rate = lambda)
# # ```
# # ###IV)
# # ```{r}
# # mu <- 2
# # rpois(sample_size, mu)
# # ```
# # ###Algorithm)
# # ```{r}
# # storedData = rep(NA, sample_size)
# # for (i in 1:sample_size){
# #   storedData[i] = i
# #   n <- 5
# #   m <- 50
# #   average = storedData/n
# #   average2 = storedData/m
# #   vector5 <- average
# #   vector50 <- average2
# # }
# # ```




nReps = 500
storedData5 = rep(NA, nReps)
storedData50 = rep(NA, nReps)

for (i in 1:nReps){
  arrayVal5 = runif(5, min = 0, max = 5)
  arrayVal50 = runif(50, min = 0, max = 5)
  
  average5 <- mean(arrayVal5)
  average50 <- mean(arrayVal50)
  
  storedData5[i] <- average5
  storedData50[i] <- average50
}

paste0("Mean for Sample Size 5: ", mean(storedData5))
paste0("Mean for Sample Size 50: ", mean(storedData50))

thoreticalMean <-  (0.5*(0+5))
paste0("Theoretical value for the uniform sample means: ", theoreticalMean)

paste0("Variance for Sample Size 5: ", var(storedData5))
paste0("Variance for Sample Size 50: ", var(storedData50))

thoreticalVar <- ((1/12)*(5-0)^2)
paste0("Theoretical value for the sample variance: ", theoreticalVar )

hist(storedData5, col="snow", main="Histogram of 500 means of 5 sample exponentials", xlab="Sample Mean", ylab="Frequency")
abline(v=mean(storedData5), col="green", lwd=6, lty=2)
abline(v=theoreticalMean, col="red", lwd=3)

hist(storedData50, col="azure2", main="Histogram of 500 means of 50 sample exponentials", xlab="Sample Mean", ylab="Frequency")
abline(v=mean(storedData50), col="green", lwd=6, lty=2)
abline(v=theoreticalMean, col="red", lwd=3)
