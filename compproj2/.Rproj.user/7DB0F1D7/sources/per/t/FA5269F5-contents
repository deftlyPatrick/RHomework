runif(500, min = 0, max = 5)
rbinom(500, size = 15, prob = 0.2)
rexp(500, rate = 5)
rpois(500, 2)

nReps = 100
storedData = rep(NA, nReps)
for (i in 1:nReps){
  storedData[i] = i
  print(storedData[i])
}

n -> 5
sim <- rpois(n*500, 2)



lambda <- 0.2
n <- 5      
nosim <- 500    
simulatedData <- matrix(rexp(n*nosim, 0.2), nrow=nosim, ncol=n)
simMeans <- apply(simulatedData, 1, mean)
sampleVar <- round(var(simMeans), 3)
print(sampleVar)
theoretcalVar <- round((1/lambda)^2/n,3);
print(theoretcalVar)

lambda <- 0.2
sample_size <- 500
n <- 5
storedData = rep(n, sample_size)
for (i in 1:sample_size){
  storedData[i] =  i
}


sample_size <- 500
lambda <- 0.2
a <- 0
b <- 5
numList <- runif(sample_size, min = a, max = b)
n <- 5
simulatedData5 <- matrix(rexp(n*numList, lambda), nrow=sample_size, ncol=n)
simMeans5 <- apply(simulatedData5, 1, mean)
sampleMean5 <- round(mean(simMeans5),3);
print(sampleMean5)
