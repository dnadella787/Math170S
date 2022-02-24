

# Problem 8.2-5

# part b
x = c(49, 108, 110, 82, 93, 114, 134, 114, 96, 52, 101, 114, 120, 116)
y = c(133, 108, 93, 119, 119, 98, 106, 131, 87, 153, 116, 129, 97, 110)

xbar = mean(x)
ybar = mean(y)
nx = length(x)
ny = length(y)
sx_sq = var(x)
sy_sq = var(y)

alpha = 0.05 
t_alpha = qt(1-0.05, nx + ny - 2)
test_statistic = abs(ybar - xbar)/sqrt((sx_sq + sy_sq)/14)


sprintf("xbar : %.9f", xbar)
sprintf("ybar : %.9f", ybar)
sprintf("nx : %.f", nx)
sprintf("ny : %.f", ny)
sprintf("var(x) : %.9f", sx_sq)
sprintf("var(y) : %.9f", sy_sq)
sprintf("test statistic |z| : %.9f", test_statistic)
sprintf("t_alpha : %.9f", t_alpha)


# part c
p = 1 - pnorm(test_statistic)
sprintf("p-value = P( Z < |z| ) : %.9f", p)


data <- data.frame(x,y)
boxplot(data, main = "birth weight (x is 5 or less, y is 6 or more)")


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


Problem 8.4-12
x = c(0.14285714285714285, 0.23636363636363636, 0.20689655172413793, 0.23214285714285715, 0.24561403508771928, 0.09259259259259259, 0.25, 0.2631578947368421, 0.2037037037037037, 0.23636363636363636, 0.17543859649122806, 0.13559322033898305, 0.18518518518518517, 0.2, 0.21428571428571427, 0.19298245614035087, 0.1111111111111111, 0.1206896551724138, 0.20689655172413793, 0.2413793103448276)
n_values = c(56, 55, 58, 56, 57, 54, 56, 57, 54, 55, 57, 59, 54, 55, 56, 57, 54, 58, 58, 58)


# part a


p_o = 0.2
alpha = 0.05
z_alpha = qnorm(1-alpha/2)

count = 0 
for (i in 1:length(x))
{
    z = abs(x[i] - p_o)/sqrt(p_o * (1 - p_o) / n_values[i])
    if (z > z_alpha)
    {
        count = count + 1
    }
}

proportion = count / length(x)
sprintf("proportion of students that rejected the null hypothesis : %.2f", proportion)

# part b 
alpha = 0.05
z_alpha = qnorm(1-alpha/2)

count = 0 
for (i in 1:length(x))
{
    epsilon = z_alpha * sqrt((x[i] * (1 - x[i]))/n_values[i])
    if (x[i]-epsilon < 0.2 & x[i] + epsilon > 0.2)
    {
        count = count + 1
    }
}

sprintf("proportion of 95 perc conf intervals that contained po = 0.20 : %.f/%.f = %.2f", count, length(x), count/length(x))


# part c 
p_o = 0.2
total_y = 219
total_n = 1124 
xbar = total_y/total_n 
alpha = 0.05
z_alpha = qnorm(1-alpha/2)

z = abs(xbar - p_o)/sqrt( (p_o * (1 - p_o)) / total_n)
sprintf("xbar : %.9f", xbar)
sprintf("z_alpha : %.9f", z_alpha)
sprintf("sum(yi) : %.f", total_y)
sprintf("sum(ni) : %.f", total_n)
sprintf("test statistic |z| : %.9f", z)
