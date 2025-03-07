from sys import argv

def square_list(list):
    return [x*x for x in list]

def main():
    l = [int(i) for i in argv[1:]]
    print(square_list(l))

if __name__ == "__main__":
    main()