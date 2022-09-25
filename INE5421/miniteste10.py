from GLC import GLC

glc = GLC(
    N=list('PKTVLJ') + ["J'"],
    T=list('betvac&'),
    S='P',
    P={
        'P': [list('KL'), list('bKLe')],
        'K': [list('cK'), list('TV'), ['V']],
        'T': [list('tT'), ['t']],
        'V': [list('vV'), ['v']],
        'L': [['J']],
        'J': [['a', "J'"], ['e', "J'"]],
        "J'": [['&'], ['c', "J'"]],
    }
)

# glc.eliminateLeftRecursion()
print(glc)
glc.left_factoring(iters=100)

print(f"Gramática fatorada:\n{glc}")
glc.llRecognizeSentence(list("bctvae"), show_steps=True)
