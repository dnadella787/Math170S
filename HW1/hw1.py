import statistics
import math
import matplotlib.pyplot as plt
import numpy as np


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
        plt.savefig("p"+prob_num+".png")
        _ = [b.remove() for b in bars]

    def count(self, lower, upper):
        a = np.array(self.arr)
        return ((lower < a) & (a < upper)).sum()

    def print(self):
        print("mean: {0}".format(self.mean()))
        print("standard deviation: {0}".format(self.sample_std_dev()))
        print("sample variance: {0}".format(self.sample_variance()))


if __name__ == "__main__":
    arr6_4 = []
    input6_4 = open("input6_4.txt", 'r')
    for line in input6_4:
        for word in line.split():
            arr6_4.append(float(word))

    print("problem 6.4")
    d = empirical(arr6_4)
    d.print()
    d.print_histogram_norm(1, '6_4')
    print("count within 1 standard deviation: {0}".format(d.count(d.mean() - d.sample_std_dev(), d.mean() + d.sample_std_dev())))
    print("count within 2 standard deviations: {0}".format(d.count(d.mean() - 2 * d.sample_std_dev(), d.mean() + 2 * d.sample_std_dev())))

    


