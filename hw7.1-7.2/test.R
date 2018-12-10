layout = read.csv("layout.csv", header = TRUE)
new = na.exclude(layout$new)
old = na.exclude(layout$old)
length(new) # should be 46
length(old) # should be 51
quantile(new)
sd(new)
sd(old)
mean(new)
quantile(old)
mean(old)

         