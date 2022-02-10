# Problem 7.4-3

# part a

xbar = 6.048
s = 0.022
n = 1219
alpha = 0.1
zalpha = qnorm(1-alpha/2)
epsilon = zalpha * s/sqrt(n)

sprintf("x_bar : %.9f", xbar)
sprintf("sigma : %.9f", s)
sprintf("z_alpha : %.9f", zalpha)
sprintf("epsilon : %.9f", epsilon)
sprintf("[xbar-epsilon, xbar+epsilon] : [%.9f, %.9f]", xbar - epsilon, xbar + epsilon)

# part c

x = 6 
z = (x - xbar)/s
p = pnorm(z, mean = 0, sd = 1, lower.tail = TRUE)

sprintf("z_score : %.9f", z)
sprintf("portion less than 6 : %.9f", p)


# problem 7.4-13

alpha = 0.05
epsilon = 0.04
z = qnorm(1-0.5/2)
p = 0.15
n = z^2 * p * (1 - p)/epsilon^2

sprintf("weld inspections needed : %.9f", n)

# Problem 7.4-14

alpha = 0.2
epsilon = 0.05
z = qnorm(1-alpha/2)
p = 0.5
n = z^2 * (p^2 + p^2) / epsilon^2

sprintf("n : %.9f", n)