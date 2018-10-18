a <- dbinom(4, 9, 0.4)
print("Binomial PDF: ", a)
b <- pbinom(4, 9, 0.4)
print("Binomial CDF: ", b)
c <- dgeom(4, 0.4)
print("Geometric PDF: ", c)
d <- pgeom(4, 0.4)
paste0("Geometric CDF: " , d)

print(paste0("Current working dir: ", wd))
print(paste0("Current working dir: ", wd))

dbinom(12,25, 0.3)