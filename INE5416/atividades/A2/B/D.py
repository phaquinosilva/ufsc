# -*- coding: utf-8 -*-

'''
Escreva a sua solução aqui
Code your solution here
Escriba su solución aquí
'''

while True:
    try:
        exp = list(input())
    except EOFError as e:
        break
    stack = []
    for i in exp:
        if i == '(':
            stack.append(i)
        elif i == ')':
            if stack:
                stack.pop()
            else:
                stack.append(0)
                break

    if not stack:
        print("correct")
    else:
        print("incorrect")