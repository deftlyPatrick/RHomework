x <- read.csv("Hw1_IQ.csv")
stat(x)


for(i in x$ï..145){
  if ((i >= 105)  &  (i <= 115)){
    print(i)
  }
}

