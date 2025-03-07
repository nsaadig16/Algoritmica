from sys import argv

def count_lines_in_file(file):
    with open(file) as f:
        lines = f.readlines()
        return len(lines)

def main():
    print(count_lines_in_file(argv[1]))

if __name__ == "__main__":
    main()
        