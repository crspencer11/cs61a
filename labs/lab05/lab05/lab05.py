def map(fn, lst):
    """Maps fn onto lst using mutation.
    >>> original_list = [5, -1, 2, 0]
    >>> map(lambda x: x * x, original_list)
    >>> original_list
    [25, 1, 4, 0]
    """
    "*** YOUR CODE HERE ***"
    count = 0
    while count < len(lst):
        lst[count] = fn(lst[count])
        count += 1


def swap(a, b):
    """Swap the contents of lists a and b.

    >>> a = [1, 'two', 3]
    >>> b = [4, [5, 6]]
    >>> swap(a, b)
    >>> a
    [4, [5, 6]]
    >>> b
    [1, 'two', 3]
    """
    "*** YOUR CODE HERE ***"
    c = a
    a = b
    b = c

def square(u):
    return u * u

def lgk_pow(n, k):
    """Computes n^k.

    >>> lgk_pow(2, 3)
    8
    >>> lgk_pow(4, 2)
    16
    >>> a = lgk_pow(2, 100000000) # make sure you have log time
    """
    "*** YOUR CODE HERE ***"
    if k == 0:
        return 1
    elif k % 2 == 0:
        return square(lgk_pow(n, k // 2))
    else:
        return n * lgk_pow(n, k - 1)

from math import sqrt


def is_prime_sqrt(n):
    """Tests whether a number N is prime or not. Implement this function
    in O(sqrt(n)) time. You can assume n >= 2

    >>> is_prime_sqrt(2)
    True
    >>> is_prime_sqrt(67092481)
    False
    >>> is_prime_sqrt(524287)
    True
    >>> is_prime_sqrt(2251748274470911)
    False
    >>> is_prime_sqrt(6700417)
    True
    >>> is_prime_sqrt(44895587973889)
    False
    >>> is_prime_sqrt(2147483647)
    True
    >>> is_prime_sqrt(67280421310721)
    True
    """
    # sqrt(k) will give the square root of k as a floating point (decimal)
    "*** YOUR CODE HERE ***"
    if n <= 1:
        return False
    for i in range(2, sqrt((n)) + 1):
        if n % i == 0:
            return False
    return True
    
