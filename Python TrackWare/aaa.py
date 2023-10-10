import statistics as st
from math import floor, ceil

try: 

   list = 5*[0]+5*[10] 
   x = list[9] 
   print('Done!') 
except IndexError: 
   print('Index out of Bond!') 
else: 
   print('Nothing is wrong!') 
finally: 
   print('Finally block!') 

s1=[1, 2, 3]

s2=[4, 5, 6]

print(s1+s2)

a=4/6
b=3/2
c=(a*b)+1
d=pow(3,2/3)
e=pow(d,c)
f=1.4+e
print(f)
print(round(f,3))
print(2*2**3)

conjunto = {4.5188, 4.5421, 4.8913, 5.2917, 5.2656, 5.2516, 5.2695, 5.4007, 5.2057,5.1610, 5.4397, 5.3365 , 5.3389, 5.2745, 5.2690, 5.3353, 5.3180, 5.2788, 5.3022 , 5.3551, 5.4166,5.4069, 5.4794, 5.4765,5.4891 , 5.5210}
print(conjunto)
print("a media da base é {:.4f}".format(st.mean(conjunto)))
print("a mediana da base é {:.4f}".format(st.median(conjunto)))
print(st.quantiles(conjunto, n=1, method='inclusive'))
print(st.quantiles(conjunto, n=4, method='inclusive'))


print("O desvio padrão de conjuntos é {:.4f}".format(st.stdev(conjunto)))
print("Variância de conjunto é {:.4f}".format(st.variance(conjunto)))
print("Variância populacional de conjunto é {:.04f}".format(st.pvariance(conjunto)))
print("Desvio padrão populacional de conjunto é {:.04f}".format(st.pstdev(conjunto)))

a=4
b=2
c=a+b
print(type(c))

a1 = 114.6
a2 = 114,8
print(round(a1))

a=4
b=2
c=a/b
print(type(c))

a = 4/6
a1 = 3/2
a = (a*a1)+1
b= pow(a,3)
a1= pow(3,b)

altura = 1.75
peso = 85
imc = (peso/(pow(altura,2)))
tetoimc = floor(imc)
print(tetoimc)

a = 8.5 *3
b = 9*2
c =(a+b)*4
d = (5.468/c)
print(ceil(d*1000))

e=((45/8)**(2+1.5))/(1-(5/7 + 6)/4) + 600
print("é {:.4f}".format(e))
s1 = {1,2,3}
s2 = 2*s1
print(s2)
