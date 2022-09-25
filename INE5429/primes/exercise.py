from time import time
from typing import Any, Callable, Dict, Generator, List, Union

import pandas as pd  # type: ignore

from primes.primes import miller_rabin, solovay_strassen
from primes.randgen import blum_blum_shub, park_miller

REQUIRED = [40, 56, 80, 128, 168, 224, 256, 512, 1024, 2048, 4096]


GENERATORS = [blum_blum_shub, park_miller]
TESTS = [miller_rabin, solovay_strassen]


def part1(n_bits: List[int] = REQUIRED) -> "pd.DataFrame":
    """Pseudo-random numbers generation"""
    pm: Dict[str, Union[int, float]] = {}
    bbs: Dict[str, Union[int, float]] = {}

    for bitsize in n_bits:
        s = time()
        pm_gen = park_miller(bitsize, 123456)
        next(pm_gen)
        pm[str(bitsize)] = time() - s

        s = time()
        bbs_gen = blum_blum_shub(bitsize, 123456)
        next(bbs_gen)
        bbs[str(bitsize)] = time() - s
    return pd.DataFrame({"PM": pm, "BBS": bbs})


def gen_prime(
    size: int,
    k: int,
    rand_generator: Callable[[int, int], Generator[int, Any, Any]],
    test: Callable[[int, int], bool],
) -> int:
    """Generate prime number"""
    gen = rand_generator(size, 12345)
    prime = next(gen)
    while not test(prime, k):
        prime = next(gen)
    return prime


def part2(k: int, n_bits: List[int] = REQUIRED):
    """Primality tests"""
    for size in n_bits:
        for gen in GENERATORS:
            for test in TESTS:
                s = time()
                prime = gen_prime(size=size, k=k, rand_generator=gen, test=test)
                runtime = time() - s
                print(f"{prime.bit_length()},{prime},{runtime},{gen.__name__},{test.__name__}")

if __name__=="__main__":
    part1().to_csv("random_results")
    part2(40)