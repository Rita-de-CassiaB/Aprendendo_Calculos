
install.packages("kableExtra") 
library(kableExtra)

#CPU
# Resumo estatístico
resumo <- summary(etl.cpu.view$dado_coletado)

# Criar uma tabela manualmente
tabela_resumo <- data.frame(
  Estatística = c("Mínimo", "1º Quartil", "Mediana", "Média", "3º Quartil", "Máximo"),
  Valor = c(min(etl.cpu.view$dado_coletado), quantile(etl.cpu.view$dado_coletado, 0.25), median(etl.cpu.view$dado_coletado), mean(etl.cpu.view$dado_coletado), quantile(etl.cpu.view$dado_coletado, 0.75), max(etl.cpu.view$dado_coletado))
)

# Criar a tabela
tabela_resumo <- kable(tabela_resumo, "html", escape = TRUE) %>%
  kable_styling(full_width = FALSE)

# Definir a cor da célula
tabela_resumo <- row_spec(tabela_resumo, row = 2, background = "#00CED1")
tabela_resumo <- row_spec(tabela_resumo, row = 4, background = "#FFD700")
tabela_resumo <- row_spec(tabela_resumo, row = 5, background = "#DC143C")


#RAM
# Resumo estatístico
Rresumo <- summary(etl.ram.view$usado)

# Criar uma tabela manualmente
Rtabela_resumo <- data.frame(
  Estatística = c("Mínimo", "1º Quartil", "Mediana", "Média", "3º Quartil", "Máximo"),
  Valor = c(min(etl.ram.view$usado), quantile(etl.ram.view$usado, 0.25), median(etl.ram.view$usado), mean(etl.ram.view$usado), quantile(etl.ram.view$usado, 0.75), max(etl.ram.view$usado))
)

# Criar a tabela
Rtabela_resumo <- kable(tabela_resumo, "html", escape = TRUE) %>%
  kable_styling(full_width = FALSE)

# Definir a cor da célula
Rtabela_resumo <- row_spec(tabela_resumo, row = 2, background = "#00CED1")
Rtabela_resumo <- row_spec(tabela_resumo, row = 4, background = "#FFD700")
Rtabela_resumo <- row_spec(tabela_resumo, row = 5, background = "#DC143C")


#DISCO
# Resumo estatístico
Dresumo <- summary(etl.disco.view$usado)

# Criar uma tabela manualmente
Dtabela_resumo <- data.frame(
  Estatística = c("Mínimo", "1º Quartil", "Mediana", "Média", "3º Quartil", "Máximo"),
  Valor = c(min(etl.disco.view$usado), quantile(etl.disco.view$usado, 0.25), median(etl.disco.view$usado), mean(etl.disco.view$usado), quantile(etl.disco.view$usado, 0.75), max(etl.disco.view$usado))
)

# Criar a tabela
Dtabela_resumo <- kable(tabela_resumo, "html", escape = TRUE) %>%
  kable_styling(full_width = FALSE)

# Definir a cor da célula
Dtabela_resumo <- row_spec(Dtabela_resumo, row = 2, background = "#00CED1")
Dtabela_resumo <- row_spec(Dtabela_resumo, row = 4, background = "#FFD700")
Dtabela_resumo <- row_spec(Dtabela_resumo, row = 5, background = "#DC143C")

