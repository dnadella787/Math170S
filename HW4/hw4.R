# problem 7.1-1
xbar = 73.8
sigma = 5
n = 16
alpha = 0.05
zalpha = qnorm(1-alpha/2)
epsilon = zalpha * sigma/sqrt(n)

sprintf("x_bar : %.9f", xbar)
sprintf("sigma : %.9f", sigma)
sprintf("z_alpha : %.9f", zalpha)
sprintf("epsilon : %.9f", epsilon)
sprintf("[xbar-epsilon, xbar+epsilon] : [%.9f, %.9f]", xbar - epsilon, xbar + epsilon)


#problem 7.1-3
a = c(17.5, 14.5, 15.2, 14.0, 17.3, 18.0, 13.8)

#part a
abar = mean(a)
sprintf("part a : ")
sprintf("   point estimator of mu : %.9f", abar)


#part b
ssq_a = var(a)
s_a = sd(a)
sprintf("part b :")
sprintf("   point estimator of sigma squared : %.9f", ssq_a)
sprintf("   point estimator of sigma : %.9f", s_a)


#part c
a_alpha = 0.10
a_n = length(a)
t_alpha = qt(1-a_alpha/2, a_n - 1)
a_epsilon = t_alpha * s_a / sqrt(a_n)

sprintf("part c : ")
sprintf("   a_bar : %.9f", abar)
sprintf("   s : %.9f", s_a)
sprintf("   t_alpha : %.9f", t_alpha)
sprintf("   epsilon : %.9f", a_epsilon)
sprintf("   [abar-epsilon, abar+epsilon] : [%.9f, %.9f]", abar - a_epsilon, abar + a_epsilon)


#problem 7.1-14

# part a
alpha = 0.05
z_alpha_2 = qnorm(1-alpha/2)
sprintf("z_alpha_2 : %.9f", z_alpha_2)
sprintf("expected length : %.9f", 2 * z_alpha_2/sqrt(5))


# part b

alpha = 0.05
n = 5
t_alpha = qt(1-alpha/2, n-1)
coeff = t_alpha * sqrt(2) * gamma(2.5) / sqrt(5) 

sprintf("length of interval : %.9f * sigma", coeff)


# problem 7.1-16 (7.1-17 in 9th edition of textbook)

alpha = 0.1
zalpha = qnorm(1-alpha/2)
n = 9 * zalpha^2
sprintf("for P(X_bar - 1 < mu < X_bar + 1) = 0.90, n must be : %.9f", n)


# problem 7.2-10

#part a
d = c(0.28, 0.01, 0.13, 0.33, -0.03, 0.07, -0.18, -0.14, -0.33, 0.01, 0.22, 0.29, -0.08, 0.23, 0.08, 0.04, -0.3, -0.08, 0.09, 0.7, 0.33, -0.34, 0.5, 0.06)
xbar_d = mean(d)
s_d = sd(d)
n = length(d)
alpha = 0.05 
t_alpha_d = qt(1-alpha, 23)
epsilon = t_alpha_d * s_d / sqrt(n)
lower_bound = xbar_d - epsilon 

sprintf("xbar_d : %.9f", xbar_d)
sprintf("s : %.9f", s_d)
sprintf("t_alpha_d : %.9f", t_alpha_d)
sprintf("epsilon : %.9f", epsilon)
sprintf("lower_bound : %.9f", lower_bound)
