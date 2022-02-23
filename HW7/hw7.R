

# # Problem 8.2-5

# # part b
# x = c(49, 108, 110, 82, 93, 114, 134, 114, 96, 52, 101, 114, 120, 116)
# y = c(133, 108, 93, 119, 119, 98, 106, 131, 87, 153, 116, 129, 97, 110)

# xbar = mean(x)
# ybar = mean(y)
# nx = length(x)
# ny = length(y)
# sx_sq = var(x)
# sy_sq = var(y)

# alpha = 0.05 
# t_alpha = qt(1-0.05, nx + ny - 2)
# test_statistic = abs(ybar - xbar)/sqrt((sx_sq + sy_sq)/14)


# sprintf("xbar : %.9f", xbar)
# sprintf("ybar : %.9f", ybar)
# sprintf("nx : %.f", nx)
# sprintf("ny : %.f", ny)
# sprintf("var(x) : %.9f", sx_sq)
# sprintf("var(y) : %.9f", sy_sq)
# sprintf("test statistic |z| : %.9f", test_statistic)
# sprintf("t_alpha : %.9f", t_alpha)


# # part c
# p = 1 - pnorm(test_statistic)
# sprintf("p-value = P( Z < |z| ) : %.9f", p)


# data <- data.frame(x,y)
# boxplot(data, main = "birth weight (x is 5 or less, y is 6 or more)")


# Problem 8.2-7

# part b 
x = c(0.9, 1.1, 0.1, 0.7, 0.4, 0.9, 0.8, 1.0, 0.4)
y = c(1.5, 0.9, 1.6, 0.5, 1.4, 1.9, 1.0, 1.2, 1.3, 1.6, 2.1)

xbar = mean(x)
ybar = mean(y)
nx = length(x)
ny = length(y)
sx_sq = var(x)
sy_sq = var(y)

alpha = 0.01
t_alpha = qt(1-alpha, nx + ny - 2)
test_statistic = abs(ybar - xbar)/(sqrt(20/99) * sqrt((4*sx_sq + 5*sy_sq)/9))


sprintf("xbar : %.9f", xbar)
sprintf("ybar : %.9f", ybar)
sprintf("nx : %.f", nx)
sprintf("ny : %.f", ny)
sprintf("var(x) : %.9f", sx_sq)
sprintf("var(y) : %.9f", sy_sq)
sprintf("test statistic |z| : %.9f", test_statistic)
sprintf("t_alpha : %.9f", t_alpha)
