# Problem 1

# part b 

x_k = c(92, 66, 85, 60, 64, 30, 80, 26, 54)
y_k = sort(x_k)

n = length(x_k)
p_k = c()
for (val in 1:n){
	p_k = append(p_k, val/(1+n))
}

z_k = qnorm(p_k)
plot(z_k, y_k, xlab = "norm quantiles", main = "Problem 1b qqplot")


# Problem 2

# part b

a = c(18.08, 22.79, 19.56, 11.11, 5.87, 23.56, 16.20, 16.84, 30.87, 27.67)

abar = mean(a)
s = sd(a)
n = length(a)
alpha = 0.01 
talpha = qt(1-alpha, n-1)
epsilon = talpha * s / sqrt(n)

sprintf("a_bar : %.9f", abar)
sprintf("s : %.9f", s)
sprintf("t_alpha : %.9f", talpha)
sprintf("epsilon : %.9f", epsilon)
sprintf("99 percent one-sided upper confidence interval : (-oo, %.9f]", abar + epsilon)
