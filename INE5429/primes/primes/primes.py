from random import randint


def miller_rabin(value: int, rounds: int) -> bool:
    """
    Miller-Rabin primality test. Implemented according to pseudo-code
    in Wikipedia.

    :param value:
        value to be tested
    :param rounds:
        number of iterations to run the "witness loop"
    :return:
        result of the test. True results should be interpreted as
        "probably prime", and False means a given number is "composite".
    """
    if value < 3:
        return True
    if not value % 2:
        return False

    d = value - 1
    r = 0
    while not d % 2:
        r += 1
        d >>= 1
    assert value == d * pow(2, r) + 1

    for _ in range(rounds):
        a = randint(a=2, b=value - 2)
        x = pow(base=a, exp=d, mod=value)
        if x == 1 or x == value - 1:
            continue
        possibly_prime = True
        for _ in range(r):
            x = pow(base=x, exp=2, mod=value)
            if x == value - 1:
                possibly_prime = False
                break
        if possibly_prime:
            return False
    return True


def _legendre(a: int, p: int) -> int:
    """Helper for Legendre symbol"""
    a = a % p
    _leg = pow(a, (p - 1) // 2, p)
    _leg = -1 if _leg == (p - 1) else _leg
    return _leg


def solovay_strassen(value: int, rounds: int) -> bool:
    """
    Solavay-Strassen primality test. Implemented according to pseudo-code
    in Wikipedia.

    :param value:
        value to be tested
    :param rounds:
        number of iterations to run the "witness loop"
    :return:
        result of the test. True results should be interpreted as
        "probably prime", and False means a given number is "composite".
    """
    if value < 3:
        return True
    if not value % 2:
        return False

    for _ in range(rounds):
        a = randint(a=2, b=value - 1)
        x = _legendre(a, value)
        if x == 0 or pow(base=a, exp=(value - 1) // 2, mod=value) != (x % value):
            return False
    return True
