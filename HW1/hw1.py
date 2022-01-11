import statistics
import math
import matplotlib.pyplot as plt
import numpy as np
import sys

class empirical:
    def __init__(self, arr):
        self.arr = arr 

    def sample_variance(self):
        return statistics.variance(self.arr)

    def mean(self):
        return statistics.mean(self.arr)

    def sample_std_dev(self):
        return statistics.stdev(self.arr)

    def print_histogram_spec(self, num_of_bins, boundaries, y_width, prob_num):
        _, bins, bars = plt.hist(self.arr, bins=num_of_bins, range=boundaries, ec='black')
        plt.title("Histogram for Problem {0}".format(prob_num.replace('_','.')))
        plt.xlabel("Value")
        plt.ylabel("Frequency")

        plt.xticks(bins, fontsize='8')
        
        new_yticks = np.arange(min(plt.yticks()[0]), max(plt.yticks()[0]), y_width)
        plt.yticks(new_yticks)
        plt.savefig("p"+prob_num+".png")
        _ = [b.remove() for b in bars]

    def print_histogram_norm(self, y_width, prob_num):
        _, bins, bars = plt.hist(self.arr, ec='black')
        plt.title("Histogram for Problem {0}".format(prob_num.replace('_','.')))
        plt.xlabel("Value")
        plt.ylabel("Frequency")

        plt.xticks(bins, fontsize='8')
        
        new_yticks = np.arange(min(plt.yticks()[0]), max(plt.yticks()[0]), y_width)
        plt.yticks(new_yticks)
        plt.axvline(x=(self.mean() - self.sample_std_dev()), color='green', label='x-s')
        plt.axvline(x=(self.mean() + self.sample_std_dev()), color='red', label='x+s')
        plt.axvline(x=(self.mean() - 2 * self.sample_std_dev()), color='magenta', label='x-2s')
        plt.axvline(x=(self.mean() + 2 * self.sample_std_dev()), color='yellow', label='x+2s')

        plt.legend()

        plt.savefig("p"+prob_num+".png")
        _ = [b.remove() for b in bars]

    def count(self, lower, upper):
        a = np.array(self.arr)
        return ((lower < a) & (a < upper)).sum()

        

    def five_num_summary(self):
        self.arr.sort()

        Q1 = 0
        type_quartile = ((len(self.arr) + 1) * 0.25)
        if type_quartile % 1:
            index = int(type_quartile//1)
            a = type_quartile % 1
            Q1 = (1 - a) * self.arr[index-1] + a * self.arr[index]
        else:
            Q1 = self.arr[int(type_quartile)]


        Q3 = 0 
        type_quartile = ((len(self.arr) + 1) * 0.75)
        if type_quartile % 1:
            index = int(type_quartile//1)
            a = type_quartile % 1
            Q3 = (1 - a) * self.arr[index-1] + a * self.arr[index]
        else:
            Q3 = self.arr[int(type_quartile)]

        print("min: {0}".format(min(self.arr)))
        print("Q1: {0}".format(Q1))
        print("median: {0}".format(statistics.median(self.arr)))
        # print("Q3: {0}".format(Q3))
        print("Q3: {:0.2f}".format(Q3))
        print("max: {0}".format(max(self.arr)))

        IQR = round(round(Q3,2) - Q1,2)

        suspected_outliers = 0
        for num in self.arr:
            if num > Q1 - 3 * IQR and num < Q1 - 1.5 * IQR:
                suspected_outliers += 1
            elif num < Q3 + 3 * IQR and num > Q3 + 1.5 * IQR:
                suspected_outliers += 1

        # suspected_outliers = self.count(Q1 - 3 * IQR, Q1 - 1.5 * IQR)
        # suspected_outliers += self.count(Q3 + 1.5 * IQR, Q3 + 3 * IQR)
        print("suspected outliers: {0}".format(suspected_outliers))

        outliers = 0
        for num in self.arr:
            if num < Q1 - 3 * IQR or num > Q3 + 3 * IQR:
                outliers += 1

        #two other ways to calculate outliers here: (subtract from total or explicitly calc)
        # outliers = len(self.arr) - self.count(Q1 - 3 * IQR, Q3 + 3 * IQR)    
        # outliers = self.count(-sys.maxsize - 1, Q1 - 3 * IQR)
        # outliers = self.count(Q3 + 3 * IQR, sys.maxsize)
        print("outliers: {0}".format(outliers))
        

        # print(np.percentile(self.arr, [25, 50, 75]))

    def print(self):
        print("mean: {0}".format(self.mean()))
        print("standard deviation: {0}".format(self.sample_std_dev()))
        print("sample variance: {0}".format(self.sample_variance()))


if __name__ == "__main__":
    # arr61_4 = []
    # input61_4 = open("input6_4.txt", 'r')
    # for line in input61_4:
    #     for word in line.split():
    #         arr61_4.append(float(word))

    # print("problem 6.1-4")
    # d = empirical(arr61_4)
    # d.print()
    # d.print_histogram_norm(1, '6_1-4')
    # print("count within 1 standard deviation: {0}".format(d.count(d.mean() - d.sample_std_dev(), d.mean() + d.sample_std_dev())))
    # print("count within 2 standard deviations: {0}".format(d.count(d.mean() - 2 * d.sample_std_dev(), d.mean() + 2 * d.sample_std_dev())))

    arr62_8 = []
    input62_5 = open("input62_8.txt", 'r')
    for line in input62_5:
        for word in line.split():
            arr62_8.append(float(word))

    e = empirical(arr62_8)
    e.five_num_summary()
    
    


