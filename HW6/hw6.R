
comb <- function(a,b)
{
    numer = factorial(a)
    denom = factorial(a-b) * factorial(b)
    return(numer/denom)
}

# # Problem 7.5-2


# # part a
# x = c(6.0, 6.3, 5.0, 6.0, 5.7, 5.9, 6.8, 5.5, 5.4, 4.8, 5.4, 5.8)



# for (start in 1:6){
#     sum = 0 
#     end = 12 - start
#     for (val in start:end){
#         sum = sum + comb(12,val) * (0.5)^12
#     }

#     print(sprintf("i : %.f ; j : %.f ; P(Y_i < m < Y_j) : %.9f", start, end + 1, sum))
# }

# y = sort(x)
# sprintf("96.14 percent conf interval : [%.1f, %.1f]", y[3], y[10])

# # part b 

# n = 12
# sum = 0 
# start = 1
# end = 6
# p = 0.3
# for (val in start:end){
#     sum = sum + comb(n,val) * (p)^val * (1-p)^(n-val)
# }

# sprintf("start : %.f ; end : %.f ; P(Y_start < m < Y_end) : %.9f", start, end + 1, sum)
# sprintf("94.75 percent conf interval : [%.1f, %.1f]", y[1], y[7])


# # problem 7.5-4

# # part a
# x = c(80.51, 80.28, 80.4, 80.35, 80.38, 80.28, 80.27, 80.16, 80.59, 80.56, 80.32, 80.27, 80.53, 80.32)
# for (start in 1:7){
#     sum = 0 
#     end = 14 - start 
#     for (val in start:end){
#         sum = sum + comb(14,val) * (0.5)^14
#     }

#     print(sprintf("i : %.f ; j : %.f ; P(Y_i < m < Y_j) : %.9f", start, end + 1, sum)) 
# }
# y = sort(x)
# sprintf("94.75 percent conf interval : [%.2f, %.2f]", y[4], y[11])



# # part b
# n = 14
# sum = 0 
# start = 6
# end = 11
# p = 0.6
# for (val in start:end){
#     sum = sum + comb(n,val) * (p)^val * (1-p)^(n-val)
# }

# sprintf("start : %.f ; end : %.f ; P(Y_start < m < Y_end) : %.9f", start, end + 1, sum)
# sprintf("90.19 percent conf interval : [%.2f, %.2f]", y[6], y[12])

# # Problem 7.5-12

# # part a
# p = (0.7)^8 + comb(8,7) * (0.7)^7 * 0.3
# sprintf("P(Y_7 < 27.3) : %.9f", p)

# # part b
# p = 0 
# for (i in 5:7)
# {
#     p = p + comb(8, i) * (0.7)^i * (0.3)^(8-i)
# }
# sprintf("P(Y_5 < 27.3 < Y_8) : %.9f", p)



# # Problem 8.1-12
# d = c(13, -4, 3, 14, -1, 17, 11, 13, 17, 14, 7, 2, -7, -10, 0, -1, -7)

# mu_0 = 0 
# dbar = mean(d)
# ds = sd(d)
# alpha = 0.05
# n = length(d)
# t_alpha = qt(1-alpha, n-1)
# z = abs(dbar - mu_0)/(ds/sqrt(n))

# sprintf("xbar_d : %.9f", dbar)
# sprintf("s_d : %.9f", ds)
# sprintf("alpha : %.3f", alpha)
# sprintf("n : %.f", n)
# sprintf("t_alpha_(%.f) : %.9f", n - 1, t_alpha)
# sprintf("|z| : %.9f", z)
# if (z > t_alpha)
# {
#     sprintf("reject the H0 in favor of the H1 since |z| > t_0.05_(%.f)", n - 1)
# } else
# {
#     sprintf("fail to reject H0 since |z| < t_0.05_(%.f)", n - 1)
# }


# Problem 8.2-13
test1 = c(2.5, 4.0, 5.2, 4.9, 5.2, 6.0, 5.2, 6.6, 6.7, 6.6, 7.3, 7.2, 5.9, 7.5, 7.1, 7.2, 6.1, 6.3, 6.5, 6.5)
test2 = c(3.8, 3.9, 4.7, 6.0, 5.7, 5.7, 5.0, 6.2, 7.3, 6.5, 8.2, 6.6, 6.8, 6.6, 7.5, 7.5, 7.3, 7.1, 7.2, 6.7)

d = test1 - test2 
# part b 

mu_0 = 0 
dbar = mean(d)
ds = sd(d)
alpha = 0.05
n = length(d)
t_alpha = qt(1-alpha, n-1)
z = abs(dbar - mu_0)/(ds/sqrt(n))

sprintf("xbar_d : %.9f", dbar)
sprintf("s_d : %.9f", ds)
sprintf("alpha : %.3f", alpha)
sprintf("n : %.f", n)
sprintf("t_alpha_(%.f) : %.9f", n - 1, t_alpha)
sprintf("|z| : %.9f", z)
if (z > t_alpha)
{
    sprintf("reject the H0 in favor of the H1 since |z| > t_0.05_(%.f)", n - 1)
} else
{
    sprintf("fail to reject H0 since |z| < t_0.05_(%.f)", n - 1)
}

# part c

alpha = 0.01
t_nalpha = qt(1-alpha, n-1)
sprintf("t_alpha_(%.f) : %.9f", n - 1, t_nalpha)

# part d 
p1 = 1 - pt(z, n-1)
sprintf("p = P(t(%.f) > |z|) = %.9f", n-1, p1)




