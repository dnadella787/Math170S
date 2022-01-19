# part a

x <- c(32.0, 30.0, 26.0, 23.0, 17.0, 16.0, 23.0, 20.0, 21.0, 23.0, 17.0, 24.0, 26.0, 18.0, 30.0)
y <- c(28.0, 27.0, 32.0, 25.0, 23.0, 22.0, 24.0, 30.0, 28.0, 32.0, 18.0, 31.0, 31.0, 18.0, 26.0)

lm1 <- lm(y ~ x)

# part b 

plot(x, y,
	pch = 16,
	cex = 1.3, 
	col = "blue",
	main = "ACT Scores in Social and Natural Sciences",
	xlab = "Social Science Score",
	ylab = "Natural Science Score")

abline(14.6578, 0.5062)

# part c 

sigma_squared <- sum(residuals(lm1)^2/length(x))

# useful resources:
# how to get residuals:
# https://stats.stackexchange.com/questions/124300/linear-regression-point-estimates
# linear regression 
# https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/lm
# how to plot linear regression in R
# https://www.theanalysisfactor.com/linear-models-r-plotting-regression-lines/

