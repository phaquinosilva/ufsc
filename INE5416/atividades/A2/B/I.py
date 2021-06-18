# -*- coding: utf-8 -*-

n = int(input())
for k in range(n):
    m, c = input().split()
    m, c = int(m), int(c)

    chaves = input().split()
    for i in range(c):
        chaves[i] = int(chaves[i])

    tab = [None]*m
    for i in chaves:
        if tab[i % m] == None:
            tab[i % m] = [i]
        else:
            tab[i % m].append(i)

    for i in range(m):
        string = str(i) + " -> "
        if tab[i] == None:
            string += "\\"
            print(string)
        else:
            for j in tab[i]:
                string += str(j) + " -> "
            string += "\\"
            print(string)
    
    if k != n-1:
        print()