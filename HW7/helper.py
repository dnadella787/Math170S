x = "8/56, 13/55, 12/58, 13/56, 14/57, 5/54, 14/56, 15/57, 11/54, 13/55, 10/57, 8/59, 10/54, 11/55, 12/56, 11/57, 6/54, 7/58, 12/58, 14/58,"

out = []
n_values = []
total_successes, n_tot = 0, 0
for nums in x.split():
    num, denom = nums[:-1].split('/')
    n_values.append(int(denom))
    out.append(int(num)/int(denom))
    total_successes += int(num)
    n_tot += int(denom)


print(out)
print(n_values)
print(total_successes)
print(n_tot)
