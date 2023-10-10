import sympy as sp

#Calculando Equações
m,b = sp.symbols('m b')
eq1 = sp.Eq(m*11+b,120)
eq2 = sp.Eq(m*19+b,150)
eq3 = sp.Eq(m*35+b,180)
eq4 = sp.Eq(m*43+b,210)
eq5 = sp.Eq(m*72+b,240)
ans = sp.solve((eq1,eq2,eq3,eq4,eq5),(m,b))
print (ans)

ans1 = sp.solve((eq1,eq5),(m,b))
ans2 = sp.solve((eq2,eq4),(m,b))
ans3 = sp.solve((eq1,eq3),(m,b))

print(ans1)
print(ans2)
print(ans3)
print(float(ans2.get(b)))
