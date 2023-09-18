import statistics as st
import sympy as sp
from scipy import stats
import numpy as np
import matplotlib.pyplot as plt

TempoVenc = [18, 5, 11, 9, 14, 6, 13, 8, 22, 15, 7, 20, 19, 16, 21, 10, 17, 12]
yieldPorcentagem = [2.9, 4.2, 3.2, 3.8, 4.0, 4.5, 3.4, 3.7, 2.1, 4.7, 4.3, 2.7, 2.5, 4.1, 2.3, 3.5, 3.2,3.6]

print("Média de Rendimentos do títulos: {:.02f}".format(st.mean(yieldPorcentagem)))
print("Mediana de Rendimentos {:.02f}".format(st.median(yieldPorcentagem)))
print("Desvio padrão de Rendimento: {:.02f}".format(st.stdev(yieldPorcentagem)))

TempoVenc = np.array([18, 5, 11, 9, 14, 6, 13, 8, 22, 15, 7, 20, 19, 16, 21, 10, 17, 12])
yieldPorcentagem = np.array([2.9, 4.2, 3.2, 3.8, 4.0, 4.5, 3.4, 3.7, 2.1, 4.7, 4.3, 2.7, 2.5, 4.1, 2.3, 3.5, 3.2,3.6])
solucao = stats.linregress(TempoVenc,yieldPorcentagem)
a_coef_angular, b_coef_linear = solucao.slope, solucao.intercept

print("A equação da reta é: y = {:.04f}x + {:.04f}".format(a_coef_angular, b_coef_linear))

def formula(a,b,x):
    return a*x + b

def graph(a,b , x_range):
    x = TempoVenc
    y = formula(a,b,x)
    plt.scatter(TempoVenc,yieldPorcentagem)
    plt.plot(x,y)
    plt.xticks(np.arange(5, 40, step = 5))
    plt.xlabel('Tempo de Vencimento')
    plt.ylabel('Yield / Rendimentos')
    plt.title('Rendimentos por tempo de vencimento do título')
    plt.grid()
    plt.show()

graph(a_coef_angular, b_coef_linear, range(5,35))

print("Quanto menor o tempo de  vencimento, maior a porcentagem de Yield")
print("Recomendamos que o tempo de vencimento diminua, pois assim os rendimentos aumentarão")
