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