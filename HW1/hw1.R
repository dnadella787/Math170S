# Problem 6.1-4
a <- c(320, 326, 325, 318, 322, 320, 329, 317, 316, 331,
320, 320, 317, 329, 316, 308, 321, 319, 322, 335,
318, 313, 327, 314, 329, 323, 327, 323, 324, 314,
308, 305, 328, 330, 322, 310, 324, 314, 312, 318,
313, 320, 324, 311, 317, 325, 328, 319, 310, 324)

# part b
abar = mean(a)
s2 = var(a)
standard_dev = sd(a)

# part a
hist(a, 
main="melting points of filaments", 
xlab="melting points", 
ylab="frequency",
col="yellow");

abline(v=abar-standard_dev,col="blue",lwd=2);
abline(v=abar+standard_dev,col="blue",lwd=2);
abline(v=abar-2*standard_dev,col="red",lwd=2);
abline(v=abar+2*standard_dev,col="red",lwd=2);
abline(v=abar,col="black",lwd=2)

legend("topright", c("x+-s", "x+-2s", "x"), col=c("blue", "red", "black"), lwd=2)


# part c
sum((abar - standard_dev) < a & a < (abar + standard_dev))
sum((abar - 2 * standard_dev) < a & a < (abar + 2 * standard_dev))


# Problem 6.1-11 (9th edition)


# Problem 6.2-8
d <- c(102.0, 106.3, 106.6, 108.8, 107.7, 106.1, 105.9, 106.7, 106.8, 110.2, 101.7, 106.6, 106.3, 110.2, 109.9, 102.0, 105.8, 109.1, 106.7, 107.3, 102.0, 106.8, 110.0, 107.9, 109.3)
d <- sort(d)

# part b
index <-.25 * (length(d) + 1)
if (index%%1 > 0){
	rem <- index%%1;
	ind <- index%/%1;
	Q1 <- d[ind] * (1-rem) + d[ind+1] * (rem);
} else {
	Q1 <- d[index]
}

index<-.75 * (length(d) + 1)
if (index%%1 > 0){
	rem <- index%%1
	ind <- index%/%1
	Q3 <- d[ind] * (1-rem) + d[ind+1] * (rem)
} else { 
	Q3 <- d[index]
}
d_min = min(d)
d_med = median(d)
d_max = max(d)


# part c

IQR = Q3 - Q1
suspected_outliers = sum((Q1 - 3 * IQR) < d & d < (Q1 - 1.5 * IQR))
suspected_outliers = suspected_outliers + sum((Q3 + 1.5 * IQR) < d & d < (Q3 + 3 * IQR))

outliers = sum((-Inf) < d & d < (Q1 - 3 * IQR))
outliers = outliers + sum((Q3 + 3 * IQR) < d & d < (Inf))


# problem 6.3-13

x <- c(11.06, 13.87, 12.93, 15.08, 17.82, 14.14, 12.26, 17.82, 20.17)
y <- c(12.26, 11.66, 12.53, 13.00, 11.79, 12.46, 10.65, 10.39, 12.26)


library("car")
# part a
qqPlot(x, ylab="Female Spider Lengths")

# part b
qqPlot(y, ylab="Male Spider Lengths")
