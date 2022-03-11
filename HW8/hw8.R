# Problem 8.6-8

#part d
eq = function(x){pnorm((668.94-x)/28)}
plot(eq(0:1300), type = 'l', xlab="mu value", ylab="k(mu)", main="k(mu) [Problem 8.6-8]")

#part e
x = c(425, 710, 661, 664, 732, 714, 934, 761, 744, 653, 725, 657, 421, 573, 535, 602, 537, 405, 874, 791, 721, 849, 567, 468, 975)

xbar = mean(x)

sprintf("xbar : %.9f", xbar)

# part e
s = 140 
n = length(x)
alpha = 0.05 

z = abs(xbar-715)/28
p = 1-pnorm(z)
sprintf("|z| : %.9f", z)
sprintf("p = P(Z > |z|) : %.9f", p)