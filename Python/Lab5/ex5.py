from time import time
from ex4 import random_list
from ex3 import isPrime

def compute_time(l):
    start = time()
    for i in l:
        isPrime(i)
    return time() - start
    

def main():
    for i in [10,50,100,1000,10000]:
        l = random_list(i)
        print(f"The computing time for a list with {i} integers is {compute_time(l)} ")

if __name__ == "__main__":
    main()
