import sympy as sp
import statistics as st

hora_dia = {'09:00','10:00','11:00','12:00', '13:00', '14:00','15:00', '16:00', '17:00', '18:00'}
n_usuarios = {10,12,15, 25, 22, 18, 15, 20, 28, 30}
uso_CPU = {20.0, 25.2, 30.0, 45.1, 42.7, 33.6, 31.5, 45.0, 53.1, 60.2}

print (hora_dia)
print (n_usuarios)
print (uso_CPU)

print("Média de usuários: {}".format(st.mean(n_usuarios)))
print("Mediana de usuários: {}".format(st.median(n_usuarios)))
print("Desvio padrão de usuários: {:.02f}".format(st.stdev(n_usuarios)))

print("Média da CPU: {}".format(st.mean(uso_CPU)))
print("Mediana de usuários: {}".format(st.median(n_usuarios)))
print("Desvio padrão de usuários: {:.02f}".format(st.stdev(n_usuarios)))
