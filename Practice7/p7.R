x = c(13.0, 18.5, 16.4, 14.8, 19.4, 17.3, 23.2, 24.9,
      20.8, 19.3, 18.8, 23.1, 15.2, 19.9, 19.1, 18.1, 
      25.1, 16.8, 20.4, 17.4, 25.2, 23.1, 15.3, 19.4, 
      16.0, 21.7, 15.2, 21.3, 21.5, 16.8, 15.6, 17.6)

xbar = mean(x)
s = sd(x)
n = length(x)
alpha = 0.05
zalpha = qnorm(1-alpha/2)
epsilon = zalpha * (s/sqrt(n))

sprintf("x_bar : %.9f", xbar)
sprintf("s : %.9f", s)
sprintf("z_alpha : %.9f", zalpha)
sprintf("epsilon : %.9f", epsilon)
sprintf("[xbar-epsilon, xbar+epsilon] : [%.9f, %.9f]", xbar - epsilon, xbar + epsilon)


