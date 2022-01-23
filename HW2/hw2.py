
if __name__ == "__main__":
    file = open("input64_10.txt", "r")

    arr = []
    for line in file:
        for num in line.split():
            arr.append(int(num))

    p_hat = len(arr)/sum(arr)
    print("point estimator for p: {0}".format(p_hat))

    file = open("input65_6.txt", "r")
    
    x1 = []
    y1 = []

    for nums in file:
        line = nums.split()
        x1.append(float(line[0]))
        y1.append(float(line[1]))

        x1.append(float(line[2]))
        y1.append(float(line[3]))

        x1.append(float(line[4]))
        y1.append(float(line[5]))

    x_bar = sum(x1)/len(x1)
    y_bar = sum(y1)/len(y1)

    b_hat = 0
    for i in range(len(x1)):
        b_hat += y1[i]*(x1[i] - x_bar)

    denom = 0
    for i in range(len(x1)):
        denom += (x1[i] - x_bar)**2

    print(f"b_hat = ( {b_hat} ) / ( {denom} )")

    b_hat /= denom 
    a_hat = y_bar

    b = a_hat - b_hat * x_bar
    m = b_hat 

    print(f"a_hat : {a_hat}")
    print(f"b_hat : {b_hat}")
    print(f"x_bar : {x_bar}")
    print(f"y_bar : {y_bar}")
    print(f"function: {m} x + {b}")

    sigma_sq = 0
    for i in range(len(y1)):
        sigma_sq += (y1[i] - (m * x1[i] + b))**2
    sigma_sq /= len(y1)

    print(f"sigma_squared : {sigma_sq}")

    