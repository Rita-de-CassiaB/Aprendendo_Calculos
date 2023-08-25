#Aula conjuntos

#forma1
Conjunto = ('cpu', 'registrador','core')
print(Conjunto)

#forma2
lista = {'cpu', 'registrador','core'}
Conjunto_proc = set(lista)
print(Conjunto_proc)

#conjunto vazio
teste = ()
print (type(teste))

#operação de união
user_CA = {'mysql', 'LOL', 'RAM', 'CPU', 'Firefox'}
user_TS = {'my sql', 'CPU', 'RAM', 'SDD1', 'Google'}
user_thanos = {'LoL', 'RAM', 'CPU', 'HD', 'Google'}
user_thor = {'MySQL', 'CPU', 'RAM', 'SSD1', 'Google'}

inventario1 = user_thor | user_CA
print(inventario1)

inventarioT = user_thor | user_CA | user_thanos | user_TS
print(inventarioT)

inventario3 = user_thor.union(user_CA)
print(inventario3)

inventario4 = user_thor.union(user_CA, user_TS, user_thanos)
print(inventario4)

inventario5 = user_thor & user_CA
print(inventario5)

inventario6 = user_thor.intersection(user_CA)
print(inventario6)

inventario7 = user_thor - user_thanos
print(inventario7)

#Buscando se um valor está contido ou não no conjunto
'LoL' not in user_thor
'LoL' not in user_thanos
teste = {'CPU'}
teste in user_TS
print(user_TS == (user_thor)) #o conjunto é igual?
print(user_TS != (user_thor)) #o conjunto é diferente
print(user_TS == (user_CA)) 
print(user_TS != (user_CA))
print(user_TS ^ user_CA) #Elementos que não são comunns entre os dois
