# Importando o base.r.notas

base.r.notas <- read.csv("C:/Users/ritad/Downloads/base-r-notas.csv")
View(base.r.notas)

#Plotando o gráfico
plot(base.r.notas$nota.algo, base.r.notas$nota.arqcomp)

modeloNotas <- lm(base.r.notas$nota.arqcomp ~ base.r.notas$nota.algo)
summary(modeloNotas)

plot(base.r.notas$nota.algo, base.r.notas$nota.arqcomp)
abline(modeloNotas)

notas_score <- (base.r.notas$nota.arqcomp+base.r.notas$nota.banco)/2
modelNotas2 <- lm(base.r.notas$nota.algo ~ notas_score)
plot(notas_score, base.r.notas$nota.algo)
abline(modelNotas2)

summary(modelNotas2)
