from sys import argv
from math import sqrt

def isPrime (n):
    if n < 2:
        return False 
    for i in range(int(sqrt(n)), 1,-1):
        if n % i == 0:
            return False
    return True

def main():
    print(isPrime(int(argv[1])))

if __name__ == "__main__":
    main()