import time

class colors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'

def main():
    print colors.OKBLUE + time.asctime() + colors.ENDC
    print colors.OKGREEN + time.asctime() + colors.ENDC
    print colors.WARNING + time.asctime() + colors.ENDC
    print colors.FAIL + time.asctime() + colors.ENDC

# Script to test your ANSI colors!
if __name__ == "__main__":
    main()
