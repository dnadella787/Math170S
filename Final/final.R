# Problem 1

# part a
x = sort(c(27, 44, 39, 63, 34, 49, 18, 20))

n = length(x)
index = .25 * (n + 1)
if (index%%1){
    rem <- index%%1;
	ind <- index%/%1;
	Q1 <- x[ind] * (1-rem) + x[ind+1] * (rem);
} else {
	Q1 <- c[index]
}

index<-.75 * (n + 1)
if (index%%1 > 0){
	rem <- index%%1
	ind <- index%/%1
	Q3 <- x[ind] * (1-rem) + x[ind+1] * (rem)
} else { 
	Q3 <- x[index]
}
x_min = min(x)
x_med = median(x)
x_max = max(x)

sprintf("min : %.f, Q1 : %.4f, med : %.4f, Q3 : %.4f, max : %.f", x_min, Q1, x_med, Q3, x_max)

IQR = Q3 - Q1
suspected_outliers = sum((Q1 - 3 * IQR) < x & x < (Q1 - 1.5 * IQR))
suspected_outliers = suspected_outliers + sum((Q3 + 1.5 * IQR) < x & x < (Q3 + 3 * IQR))
# print(Q1 - 3 * IQR)
# print(Q1 - 1.5 * IQR)
# print(Q3 + 1.5 * IQR)
# print(Q3 + 3 * IQR)

outliers = sum((-Inf) < x & x < (Q1 - 3 * IQR))
outliers = outliers + sum((Q3 + 3 * IQR) < x & x < (Inf))

sprintf("suspected outlier count : %.f", suspected_outliers)
sprintf("outlier count : %.f", outliers)

# part c 
k = seq(1:n)
pk = k/(n+1)
zk = qnorm(pk)
for (val in 1:n){
    print(sprintf("k : %.f, p_k : %.9f, z_k : %.9f", k[val], pk[val], zk[val]))
}

#part d 
plot(zk, x, xlab = "norm quantiles", main = "Problem 1d qqplot")



# Problem 2 

x = c(133.5, 137.2, 136.3, 133.3, 137.5, 135.4, 138.4, 137.1, 136.5, 139.4, 137.9, 136.8)
y = c(134.0, 134.7, 136.0, 132.7, 134.6, 135.2, 135.9, 135.6, 135.8, 134.2)
alpha = 0.05

# part a 
xbar = mean(x)
ybar = mean(y)
sx = sd(x)
sy = sd(y)
nx = length(x)
ny = length(y)

sprintf("xbar : %.9f", xbar)
sprintf("ybar : %.9f", ybar)
sprintf("sx : %.9f", sx)
sprintf("sy : %.9f", sy)
sprintf("nx : %.f", nx)
sprintf("ny : %.f", ny)

r = floor((sx^2/nx + sy^2/ny)^2 / ((1/(nx-1)) * (sx^2/nx)^2 + (1/(ny-1)) * (sy^2/ny)^2))
t_alpha_2 = qt(1-alpha/2, r)

epsilon = t_alpha_2 * sqrt(((sx^2/nx) + (sy^2/ny)))

sprintf("t_alpha/2(r) : %.9f", t_alpha_2)
sprintf("r : %.9f", r)
sprintf("epsilon : %.9f", epsilon)
sprintf("95 percent confidence interval : [%.9f, %.9f]", xbar-ybar-epsilon, xbar-ybar+epsilon)

t_alpha = qt(1-alpha, r)

# part b 
z = abs((xbar - ybar) / sqrt(((sx^2/nx) + (sy^2/ny))))
sprintf("|z| : %.9f", z)
sprintf("t_alpha(r) : %.9f", t_alpha)


# Problem 3 

# part a 
n = 273
x = 63 
p_o = 0.3 
alpha = 0.05 

z = abs(((x/n) - p_o) / (sqrt(p_o * (1 - p_o) * n)))
z_alpha = qnorm(1-alpha)

sprintf("X/n : %.9f", x/n)
sprintf("|z| : %.9f", z)
sprintf("z_alpha : %.9f", z_alpha)

# part b 
p = 1-pnorm(z)
sprintf("p-value : %.9f", p)

# Problem 5

#part b 
a = c(1,2,3,4,5)
b = c(15,12,7,2,4)

n = sum(b)
denom = 0 
for (i in 1:5){
    denom = denom + (b[i]*a[i])
}
p_mle = n/denom
sprintf("p_mle : %.9f", p_mle)

pi = c(0,0,0,0,0)
for (i in 1:5) {
    pi[i] = p_mle * (1-p_mle)^(i-1)
    print(sprintf("p_%.fo : %.9f", i, pi[i]))
}

Q = 0 
for (i in 1:5){
    Q = Q + (b[i] - n * pi[i])^2/(n * pi[i])
}

sprintf("Q : %.9f", Q)

alpha = 0.05
chi_alpha = qchisq(1-alpha, 3)
sprintf("chi_alpha(3) : %.9f", chi_alpha)
