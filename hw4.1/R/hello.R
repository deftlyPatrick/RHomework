# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

x_seq = seq(-2, 2, by = 0.1)
fx = 0.075*(4-0.5*x_seq^2)
plot(x_seq, fx, type = "l")


y_seq <- seq(0, 10, by = 1)
ylength <- length(y_seq)
yz <- 1:ylength
Ysum <- y_seq
for (y in yz){
  for(j in 1:y){
  if ((y >= 0) && (y < 5 )){
    Ysum[y] = (1/25)*(y)
  }
  else if((y >= 5) && (y < 10)){
    Ysum[y] = (2/5)-((1/25)*(y))
  }
  else{
    Ysum[y] = 0
  }
  }
}
plot(y_seq,Ysum, type = "l")

# define A
A <- c(1,2,3,4)
n <- length(A)
z <- 1:n
#predefine X (don't worry, all values will be overwritten, but it will have the same length as A
X <- A
for(k in z){
  for(j in 1:k){
    X[k] = 1/k*sum(A[n-k]/A[n-j+1])
  }
}

#y <- seq(0, 10, 0.01)
#fx <- (y >= 0 & y < 5) * (1/25*y) +
#  (x >= 5 & x < 10) * ((2/5)-(1/25)*y) +
#  (x > 10 & x < 0) * 0
#plot(y, fy)




