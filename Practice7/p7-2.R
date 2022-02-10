



a = c(481, 537, 513, 583, 453, 510, 570, 500, 457, 555, 
      618, 327, 350, 643, 499, 421, 505, 637, 599, 392)

abar = mean(a)
s = sd(a)
n = length(a)
alpha = 0.02 
talpha = qt(1-alpha/2, n-1)
epsilon = talpha * s / sqrt(n)

sprintf("a_bar : %.9f", abar)
sprintf("s : %.9f", s)
sprintf("t_alpha : %.9f", talpha)
sprintf("epsilon : %.9f", epsilon)
sprintf("[abar-epsilon, abar+epsilon] : [%.9f, %.9f]", abar - epsilon, abar + epsilon)


alpha = 0.005 
talpha = qt(1-alpha, n-1)
epsilon = talpha * s / sqrt(n)

sprintf("abar-epsilon : %.9f", abar-epsilon)

# there are also tables in practice 7 for this type of thing (t distribution)

