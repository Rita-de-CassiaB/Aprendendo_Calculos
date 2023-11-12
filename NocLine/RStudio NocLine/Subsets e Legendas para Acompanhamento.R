# CPU 
# Calcule o primeiro quartil (Q1) e o terceiro quartil (Q3)
q1 <- quantile(etl.cpu.view$dado_coletado, probs = 0.25)
q3 <- quantile(etl.cpu.view$dado_coletado, probs = 0.75)

# Use a função sum para contar valores acima de Q3 e abaixo de Q1
quantidade_acima_q3 <- sum(etl.cpu.view$dado_coletado >= q3)
quantidade_abaixo_q1 <- sum(etl.cpu.view$dado_coletado <= q1)
quantidade_entre_q1_e_q3 <- sum(etl.cpu.view$dado_coletado > q1 & etl.cpu.view$dado_coletado < q3)

# Exiba as quantidades
print(paste("Quantidade de dados acima do terceiro quartil (Q3):", quantidade_acima_q3))
print(paste("Quantidade de dados abaixo do primeiro quartil (Q1):", quantidade_abaixo_q1))
print(paste("Quantidade de dados entre Q1 e Q3:", quantidade_entre_q1_e_q3))


# Crie um vetor com as quantidades
quantidades <- c(quantidade_acima_q3,  quantidade_entre_q1_e_q3, quantidade_abaixo_q1)

# Crie um vetor com os nomes das categorias
categorias <- c("Perigo", "Risco", "Estável")

# Crie o gráfico de barras
barplot(quantidades, names.arg = categorias, col = c("#DC143C","#FFD700", "#00CED1"),
        xlab = "Categorias", ylab = "Quantidade", main = "Quantidade de Dados por Categoria")

legend("topright", legend = paste(quantidades), fill = c("#DC143C", "#FFD700", "#00CED1"))



# RAM 
# Calcule o primeiro quartil (Q1) e o terceiro quartil (Q3)
Rq1 <- quantile(etl.ram.view$usado, probs = 0.25)
Rq3 <- quantile(etl.ram.view$usado, probs = 0.75)

# Use a função sum para contar valores acima de Q3 e abaixo de Q1
Rquantidade_acima_q3 <- sum(etl.ram.view$usado >= Rq3)
Rquantidade_abaixo_q1 <- sum(etl.ram.view$usado <= Rq1)
Rquantidade_entre_q1_e_q3 <- sum(etl.ram.view$usado > Rq1 & etl.ram.view$usado < Rq3)

# Exiba as quantidades
print(paste("Quantidade de dados acima do terceiro quartil (Q3):", Rquantidade_acima_q3))
print(paste("Quantidade de dados abaixo do primeiro quartil (Q1):", Rquantidade_abaixo_q1))
print(paste("Quantidade de dados entre Q1 e Q3:", Rquantidade_entre_q1_e_q3))


# Crie um vetor com as quantidades
Rquantidades <- c(Rquantidade_acima_q3, Rquantidade_entre_q1_e_q3, Rquantidade_abaixo_q1)

# Crie um vetor com os nomes das categorias
Rcategorias <- c("Perigo", "Risco", "Estável")

# Crie o gráfico de barras
barplot(Rquantidades, names.arg = Rcategorias, col = c("#DC143C","#FFD700", "#00CED1"),
        xlab = "Categorias", ylab = "Quantidade", main = "Quantidade de Dados por Categoria")

legend("topright", legend = paste(Rquantidades), fill = c("#DC143C", "#FFD700", "#00CED1"))




# DISCO 
# Calcule o primeiro quartil (Q1) e o terceiro quartil (Q3)
Dq1 <- quantile(etl.disco.view$usado, probs = 0.25)
Dq3 <- quantile(etl.disco.view$usado, probs = 0.75)

# Use a função sum para contar valores acima de Q3 e abaixo de Q1
Dquantidade_acima_q3 <- sum(etl.disco.view$usado >= Dq3)
Dquantidade_abaixo_q1 <- sum(etl.disco.view$usado <= Dq1)
Dquantidade_entre_q1_e_q3 <- sum(etl.disco.view$usado > Dq1 & etl.disco.view$usado < Dq3)

# Exiba as quantidades
print(paste("Quantidade de dados acima do terceiro quartil (Q3):", Dquantidade_acima_q3))
print(paste("Quantidade de dados abaixo do primeiro quartil (Q1):", Dquantidade_abaixo_q1))
print(paste("Quantidade de dados entre Q1 e Q3:", Dquantidade_entre_q1_e_q3))


# Crie um vetor com as quantidades
Dquantidades <- c(Dquantidade_acima_q3, Dquantidade_entre_q1_e_q3, Dquantidade_abaixo_q1)

# Crie um vetor com os nomes das categorias
Dcategorias <- c("Perigo", "Risco", "Estável")

# Crie o gráfico de barras
barplot(Dquantidades, names.arg = Dcategorias, col = c("#DC143C","#FFD700", "#00CED1"),
        xlab = "Categorias", ylab = "Quantidade", main = "Quantidade de Dados por Categoria")

legend("topright", legend = paste(Dquantidades), fill = c("#DC143C", "#FFD700", "#00CED1"))


#REDE - BYTES ENVIADOS
# Calcule o primeiro quartil (Q1) e o terceiro quartil (Q3)
REq1 <- quantile(etl.rede.view$env_mb, probs = 0.25)
REq3 <- quantile(etl.rede.view$env_mb, probs = 0.75)

# Use a função sum para contar valores acima de Q3 e abaixo de Q1
REquantidade_acima_q3 <- sum(etl.rede.view$env_mb >= REq3)
REquantidade_abaixo_q1 <- sum(etl.rede.view$env_mb <= REq1)
REquantidade_entre_q1_e_q3 <- sum(etl.rede.view$env_mb > REq1 & etl.rede.view$env_mb < REq3)

# Exiba as quantidades
print(paste("Quantidade de dados acima do terceiro quartil (Q3):", REquantidade_acima_q3))
print(paste("Quantidade de dados abaixo do primeiro quartil (Q1):", REquantidade_abaixo_q1))
print(paste("Quantidade de dados entre Q1 e Q3:", REquantidade_entre_q1_e_q3))


# Crie um vetor com as quantidades
REquantidades <- c(REquantidade_acima_q3, REquantidade_entre_q1_e_q3, REquantidade_abaixo_q1)

# Crie um vetor com os nomes das categorias
REcategorias <- c("Perigo", "Risco", "Estável")

# Crie o gráfico de barras
barplot(REquantidades, names.arg = REcategorias, col = c("#DC143C","#FFD700", "#00CED1"),
        xlab = "Categorias", ylab = "Quantidade", main = "Quantidade de Dados por Categoria")

legend("topright", legend = paste(REquantidades), fill = c("#DC143C", "#FFD700", "#00CED1"))


#REDE - BYTES RECEBIDOS
# Calcule o primeiro quartil (Q1) e o terceiro quartil (Q3)
RRq1 <- quantile(etl.rede.view$rec_mb, probs = 0.25)
RRq3 <- quantile(etl.rede.view$rec_mb, probs = 0.75)

# Use a função sum para contar valores acima de Q3 e abaixo de Q1
RRquantidade_acima_q3 <- sum(etl.rede.view$rec_mb >= RRq3)
RRquantidade_abaixo_q1 <- sum(etl.rede.view$rec_mb <= RRq1)
RRquantidade_entre_q1_e_q3 <- sum(etl.rede.view$rec_mb > RRq1 & etl.rede.view$rec_mb < RRq3)

# Exiba as quantidades
print(paste("Quantidade de dados acima do terceiro quartil (Q3):", RRquantidade_acima_q3))
print(paste("Quantidade de dados abaixo do primeiro quartil (Q1):", RRquantidade_abaixo_q1))
print(paste("Quantidade de dados entre Q1 e Q3:", RRquantidade_entre_q1_e_q3))


# Crie um vetor com as quantidades
RRquantidades <- c(RRquantidade_acima_q3, RRquantidade_entre_q1_e_q3, RRquantidade_abaixo_q1)

# Crie um vetor com os nomes das categorias
RRcategorias <- c("Perigo", "Risco", "Estável")

# Crie o gráfico de barras
barplot(RRquantidades, names.arg = RRcategorias, col = c("#DC143C","#FFD700", "#00CED1"),
        xlab = "Categorias", ylab = "Quantidade", main = "Quantidade de Dados por Categoria")

legend("topright", legend = paste(RRquantidades), fill = c("#DC143C", "#FFD700", "#00CED1"))
