# returns an array of 4 random numbers from 1-8
def random_numbers
    numbers = [1, 2, 3, 4, 5, 6, 7, 8]
    random_nums = numbers.shuffle[0,4]
    return random_nums
end