#Assignment 1

##2

###a
mu <- .2
sig2 <- .01
alpha <- mu*(((mu*(1 - mu))/sig2) - 1)
beta <- (alpha*(1 - mu))/mu
x <- seq(0.01, 0.9, by = 0.001)
y <- dbeta(x, alpha, beta)
plot(x, y, type = "l", ylab = "p(x)")

###b
y1 <- rbeta(1000, alpha, beta)
hist(y1, freq = F)
curve(dbeta(x, alpha, beta), add = T)

###c
mean(y1)
var(y1)

###d
quantile(y1, .975)
quantile(y1, .025)
qbeta(.975, alpha, beta)
qbeta(.025, alpha, beta)
