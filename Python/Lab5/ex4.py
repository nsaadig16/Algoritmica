from sys import argv
from random import randint

def random_list(n):
    rn = []
    for i in range(n):
        rn.append(randint(0,1000))
    return rn

def main():
    print(random_list(int(argv)))

if __name__ == "__main__":
    main()