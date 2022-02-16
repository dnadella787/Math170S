
comb <- function(a,b)
{
    numer = factorial(a)
    denom = factorial(a-b) * factorial(b)
    return(numer/denom)
}

# Problem 7.5-2


# part a
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


# problem 7.5-4

# part a
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

# Problem 7.5-12

# part a
p = (0.7)^8 + comb(8,7) * (0.7)^7 * 0.3
sprintf("P(Y_7 < 27.3) : %.9f", p)

# part b
p = 0 
for (i in 5:7)
{
    p = p + comb(8, i) * (0.7)^i * (0.3)^(8-i)
}
sprintf("P(Y_5 < 27.3 < Y_8) : %.9f", p)
