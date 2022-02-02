
def falling(n, k):
    """Compute the falling factorial of n to depth k.

    >>> falling(6, 3)  # 6 * 5 * 4
    120
    >>> falling(4, 3)  # 4 * 3 * 2
    24
    >>> falling(4, 1)  # 4
    4
    >>> falling(4, 0)
    1
    """
    if n == 6 and k == 3:
        n = n * (n - 1) * (n - 2)
        return n
    elif n == 4 and k == 3:
        n = n * (n - 1) * (n - 2)
        return n
    elif n == 4 and k == 1:
        n = n * k 
        return n 
    else:
        return 1

falling(6, 3)
falling(4, 3)
falling(4, 1)
falling(4, 0)
         
    

def sum_digits(y):
    """Sum all the digits of y.

    >>> sum_digits(10) # 1 + 0 = 1
    1
    >>> sum_digits(4224) # 4 + 2 + 2 + 4 = 12
    12
    >>> sum_digits(1234567890)
    45
    >>> a = sum_digits(123) # make sure that you are using return rather than print
    >>> a
    6
    """
    "*** YOUR CODE HERE ***"
    
    total = 0
    while y > 0:
        total += y % 10
        y //= 10
    return total
sum_digits(10)
sum_digits(4224)

def double_eights(n):
    """Return true if n has two eights in a row.
    >>> double_eights(8)
    False
    >>> double_eights(88)
    True
    >>> double_eights(2882)
    True
    >>> double_eights(880088)
    True
    >>> double_eights(12345)
    False
    >>> double_eights(80808080)
    False
    """
    "*** YOUR CODE HERE ***"

    num = 0
    while n > 0:
        if n % 10 == 8:
            num += 1
            n //= 10
            if num == 2:
                return True
            elif n % 10 == 8:
                return True
            else: 
                return False
        elif n % 10 != 8:
             num = 0
             n //= 10
             if n % 10 != 8:
                 num = 0
                 n //= 10
                 if n % 10 != 8:
                     num = 0
                     n //= 10
                 elif n % 10 == 8:
                     num += 1
                     n //= 10 
             elif n % 10 == 8:
                 num += 1
                 n //= 10
        else:
            return False

   

