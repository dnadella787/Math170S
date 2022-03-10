
# problem 8.7-7 part c 
eq = function(x){
    1-ppois(8,lambda=10*x)
}

x <- seq(0.5,3,0.01)
plot(x, eq(x), type = 'l', 
               xlab="mu value", 
               ylab="k(mu)", 
               main="k(mu) [Problem 8.7-7]")


# problem 9.1-4

xi <- c(124, 30, 43, 11)
n = sum(xi)

desired <- c(9,3,3,1)
pio <- desired/sum(desired)

Q = 0 
for (val in 1:4)
{
    curr = (xi[val] - n * pio[val])^2 / (n * pio[val])
    Q = Q + curr 
}

alpha = 0.05
chi_alpha = qchisq(1-alpha, 3)

sprintf("Q : %.9f", Q)
sprintf("chi_sq_(3) : %.9f", chi_alpha)

