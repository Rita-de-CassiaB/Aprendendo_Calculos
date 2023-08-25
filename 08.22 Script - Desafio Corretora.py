#Desafio de Python - Empresa de investimentos

Ágora = set (['ITSA4', 'ECOR3', 'TAEE11', 'B3SA3', 'VALE3'])
Ativa = set(['B3SA3', 'BBDC4', 'BBSE3', 'BRDT3', 'TAEE11', 'TRPL4', 'VALE3', 'VIVT3'])
Genial = set (['CPFE3', 'BEEF3', 'CYRE3', 'SAPT4', 'TRPL4'])
Easyvest = set(['B3SA3', 'AGRO3','COCA34','TAEE11','VALE3', 'CPLE11', 'ITSA4', 'ABEV3'])
Elite = set(['BBDC4', 'BBSE3', 'BRSR6', 'EGIE3', 'ITSA4', 'SAPR11', 'TAEE11', 'TRPL4', 'VIVT3', 'VALE3'])
Guide = set(['ALUP11', 'BBAS3', 'CYRE3', 'CPFE3', 'KLBN11', 'PSSA3', 'TIMS3', 'VALE3'])
Nova_Futura = set (['B3SA3','CYRE3', 'GGBR4', 'VIVT3', 'TRPL4'])
Órama = set (['ABCB4','BBDC4', 'BEEF3', 'CESP6', 'EGIE3'])

print('Corretora Agora', Ágora)
print('Corretora Ativa', Ativa)
print('Corretora Genial', Genial)
print('Corretora Elite', Elite)
print('Corretora Órama', Órama)
print('Corretora Easyvest',Easyvest)
print('Corretora Guide', Guide)
print('Corretora Nova_Futura',Nova_Futura)

Comum = Elite.intersection(Easyvest, Guide, Nova_Futura, Ágora, Órama, Ativa, Genial)
print ('As ações em comum entre todas as Corretoras são:', Comum)

print(Ativa)
print(Easyvest)
print(Guide)
print(Elite)

Escolhidas = Elite.intersection(Ativa, Easyvest, Guide)
print ('As ações em comum entre as Corretoras Ativa, Easyvest, Guide e Elite são:', Escolhidas)

Unica = (Easyvest - Ativa - Guide - Elite)
print ('As ações únicas entre as Corretoras Ativa, Easyvest, Guide e Elite são:', Unica)


