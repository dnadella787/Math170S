

file = open("input.txt", "r")

data = []
for line in file:
    for num in line.split():
        data.append(float(num))

print(sum(data)/len(data))