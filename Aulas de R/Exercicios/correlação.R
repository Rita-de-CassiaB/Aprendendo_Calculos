#Case: O desempenho dos fundos mútuos

Anos <- c(1982:2000)
Fundo <- c(5.27, 43.08, -1.02, 56.94, 56.71, 12.48, 11.61, 27.76, -12.05, 4.74, -5.79, 44.74, 0.76, 14.89, 14.65, 4.12, 16.93, 26.34, -8.60)
EAFE <- c(-0.86, 24.61, 7.86, 56.72, 69.94, 24.93, 28.59, 10.80, -23.20, 12.50, -11.85, 32.94, 8.06, 11.55, 6.36, 2.06, 20.33, 27.30, -13.96)

# Diagrama de dispersão
plot(EAFE, Fundo, pch = 16, main = "Diagrama de Dispersão", xlab = "EAFE", ylab = "Fundo")

# Análise de Regressão
modelo <- lm(Fundo ~ EAFE)
abline(modelo)

# Coeficiente de correlação
coeficiente_correlacao <- cor(EAFE, Fundo)
print(paste("Coeficiente de Correlação: ", coeficiente_correlacao))

# Teste de Correlação com Intervalo de Confiança
cor_test_result <- cor.test(Fundo, EAFE, conf.level = 0.95)
print(cor_test_result)
#Aqui vemos que a correlação entre os dois são fortes

# Histograma
hist(Fundo, main = "Histograma de Fundo", xlab = "Fundo")

# Boxplot
boxplot(Fundo, EAFE, main = "Boxplot: Fundo e EAFE")
#É observável a partir do boxplot que dentro do EAFE existe um valor outlier, que fica acima de 65.0

