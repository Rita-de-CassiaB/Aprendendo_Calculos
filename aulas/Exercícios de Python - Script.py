#Lista de Exercícios -- utilizando "%.3f"% para apresentar o número de uma melhor forma

a=2
b=3
c=1
d=5
e=4
j=0


a1= pow(a,b)
print("1.",a,"elevado a",b," =",a1)

a2= pow(-a,b)
print("2. -",a," elevado a",b," =",a2)

a3 = pow(c,j)
print("3.",c," elevado a",j," =",a3)

a4 = pow(-c,j)
print("4. -",1," elevado a",j," =", a4)

a5 = pow (b,j)
print ("5.",b," elevado a",j," =", a5)

a6 = pow ((a/d),b)
print ("6. (",a,"/",d,") elevado a",b," =", "%.3f"% a6)

a7 = pow (b,-a)
print ("7. 3 elevado a -2 =","%.2f"% a7)

a8 = pow((c/a), -b)
print ("8. (1/2) elevado a -3 =", a8)

a9 = pow (pow(-c,b),e)
print ("9. -1 elevado a 3 elevado a 4=",a9)

h = 0.5
a10 = pow(h,b)
print ("10.",h, "elevado a",b, "=",a10)

i = (0.5/2)
a11 = pow (i,e)
print ("11.",i, "elevado a", e, "=", "%.4f"% a11)

a12= pow(j,e)
print ("12.",j, "elevado a", e, "=", a12)

k=0.41
a13 = (c +(pow(k,a)))
print ("13.",c, "+", k, "elevado a", a, "=", "%.2f"% a13)

a14 = (c/e)+ pow(d,a)- pow(a,-e)
print ("14.",c,"/",e,"+", d,"elevado a", a,"-",a,"elevado a -", e,  "=","%.3f"% a14)

a15 = pow(a,-b)+ pow(-e,-d)
print ("15.",a, "elevado a -", b, "+ -",e, "elevado a -", d,"=", "%.3f"%a15)

a16 = (pow(((e/d)-(c/a)+c),-a))
a17 = (c /(c +(pow(b,a))- (pow((e-d), (-a)))))
print ("16. ((",e,"/",d,"-", c,"/",a,"+",c,") elevados a -", a,")  + "'\n',"  (",
        c,"/ (",c,"+", b,"elevado a",a,"-(",e,"-",d,")elevado a -",a,")) =", "%.4f"%(a16 + a17))
