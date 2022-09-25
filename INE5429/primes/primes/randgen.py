from typing import Generator

P_CONST = 96347359111456497604501832466262406717902320200316411624096961848062489248440463687252739236742310937076581552107688108580120035184265706853060140714929278551668164183866773274513513619316767688557978273582514472852494903649769726673655916285990162669575795142578526232999827009302876964374272983996022403043
Q_CONST = 111005394678605362512269971913905655672092168420138844174309963183221865880242561948005919698834267970019303894501234612756070852867454566171180831068934867761791791100831904203129958040110807093970614457961805974185703077438127009263394457392155819324971444078458399589287700495336998297045073313135061505839


def park_miller(size: int, seed: int) -> Generator[int, None, None]:
    """
    Simple implementation of Park-Miller PRNG

    :param size: size of bit representation desired. Since python uses arbitrary
        precision integers by default, we should only need to guarrantee generated numbers
        are in the range [0, size).
    :param seed: seed used in PRNG.
    :return:
        generator object for Park-Miller random number sequence. Note that each element in the sequence will have
        exactly the number of bits provided in argument size.
    """
    mp31: int = 2**31 - 1
    pr: int = 7**5
    state: int = seed
    while True:
        num: int = 0
        while num.bit_length() < size:
            state = (pr * state) % mp31
            if not (size - num.bit_length()) % state.bit_length():
                num <<= state.bit_length()
                num |= state
                continue
            num <<= 1
            num |= state & 1
        yield num


def blum_blum_shub(
    size: int,
    seed: int,
    _p: int = P_CONST,
    _q: int = Q_CONST,
) -> Generator[int, None, None]:
    """
    Simple implementation of Blum Blum Shub PRNG

    :param size: size of bit representation desired. Since python uses arbitrary
        precision integers by default, we should only need to guarrantee generated numbers
        are in the range [0, size).
    :param _s: values used to generate M for BBS algorithm.
    :param _q: values used to generate M for BBS algorithm.
    :param seed: seed used in PRNG.
    :return:
        generator object for Blum Blum Shub random number sequence. Each element in the sequence will have
        exactly the number of bits provided in argument size.
    """
    from math import gcd

    assert gcd(_p, _q) == 1, "_p and _q values provided should be coprimes"
    modulo: int = _p * _q
    assert seed % modulo != 0, "seed provided is not valid with _p and _q"

    state: int = seed
    while True:
        num: int = 0
        while num.bit_length() < size:
            state = pow(base=state, exp=2, mod=modulo)
            if not (size - num.bit_length()) % state.bit_length():
                num <<= state.bit_length()
                num |= state
                continue
            num <<= 1
            num |= state & 1
        yield num

