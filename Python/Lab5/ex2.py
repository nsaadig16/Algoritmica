from sys import argv

def fib(n):
    f = []
    a = 0; b = 1
    while a < n:
        f.append(a)
        a, b = b, a+b
    return f

def main():
    print(fib(int(argv[1])))

if __name__ == "__main__":
    main()