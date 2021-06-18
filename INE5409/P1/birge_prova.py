def birge_vieta(coef,x0):
    #x = x0 + 1
    xn = x0
    #while abs(xn - x) > p:
    x = xn
    vb = []
    vc = []
    b = coef[0]
    vb.append(b)
    cj = b
    vc.append(cj)
    for i in coef[1:]:
        b = i + b*x
        vb.append(b)
        ci = cj
        cj = b + ci*x
        vc.append(cj)
    xn = x - (b/ci)
    print(vb)
    print(vc)
    print(xn)
    return xn

coef = [1, 3, -6, -18]
x0 = 2

birge_vieta(coef,x0)