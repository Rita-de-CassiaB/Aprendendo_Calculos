library(forecast)
library(readxl)
library(tidyverse)
library(xts)
library(arima2)


#CPU

# Adicione uma data fictícia para as horas
data_hora <- as.POSIXct(paste(Sys.Date(), etl.cpu.view$data_hora))

par(mfrow=c(1,1), mar=c(4,4,4,4))
# Crie o gráfico de linha
plot(data_hora, etl.cpu.view$dado_coletado, type = "l", col = "black", xlab = "Hora", ylab = "Uso de CPU", main = "Uso de CPU x Tempo")

cpu <- xts(etl.cpu.view$dado_coletado, order.by = data_hora )
plot(cpu, main = "Cpu utilizada")




#RAM

# Adicione uma data fictícia para as horas
data_hora <- as.POSIXct(paste(Sys.Date(), etl.cpu.view$data_hora))

par(mfrow=c(1,1), mar=c(4,4,4,4))
# Crie o gráfico de linha
plot(data_hora, etl.ram.view$usado, type = "l", col = "black", xlab = "Hora", ylab = "Uso de RAM", main = "Uso de RAM x Tempo")

ram <- xts(etl.ram.view$usado, order.by = data_hora )

plot(ram, main = "Ram utilizada")


#DISCO
# Adicione uma data fictícia para as horas
data_hora <- as.POSIXct(paste(Sys.Date(), etl.cpu.view$data_hora))

par(mfrow=c(1,1), mar=c(4,4,4,4))
# Crie o gráfico de linha
plot(data_hora, etl.disco.view$usado, type = "l", col = "black", xlab = "Hora", ylab = "Uso de Disco", main = "Uso de Disco x Tempo")

disco <- xts(etl.disco.view$usado, order.by = data_hora )
plot(disco, main = "Disco utilizado")



#REDE - BYTES ENVIADOS

# Adicione uma data fictícia para as horas
data_hora <- as.POSIXct(paste(Sys.Date(), etl.cpu.view$data_hora))

par(mfrow=c(1,1), mar=c(4,4,4,4))
# Crie o gráfico de linha
plot(data_hora, etl.rede.view$env_mb, type = "l", col = "black", xlab = "Hora", ylab = "Bytes Enviados de Rede", main = "Bytes Enviados de Rede x Tempo")

redeEnv <- xts(etl.rede.view$env_mb, order.by = data_hora)

plot(redeEnv, main = "Rede bytes enviados")



#REDE - BYTES RECEBIDOS

# Adicione uma data fictícia para as horas
data_hora <- as.POSIXct(paste(Sys.Date(), etl.cpu.view$data_hora))

par(mfrow=c(1,1), mar=c(4,4,4,4))
# Crie o gráfico de linha
plot(data_hora, etl.rede.view$rec_mb, type = "l", col = "black", xlab = "Hora", ylab = "Bytes Recebidos de Rede", main = "Bytes Recebidos de Rede x Tempo")

redeRec <- xts(etl.rede.view$rec_mb, order.by = data_hora)
plot(redeRec, main = "Rede bytes recebidos")





# Análise Geral
boxplot(cpu)
boxplot(ram)
boxplot(disco)
boxplot(redeEnv)
boxplot(redeRec)

#Gerando séries temporais

scpu <- ts(cpu, start = c(19.59), end = c(22.39), frequency = 120)
sram <- ts(ram, start = c(19.59), end = c(22.39), frequency = 60)
sdisco <- ts(disco, start = c(19.59), end = c(22.39), frequency = 60)
sredeEnv <- ts(redeEnv, start = c(19.59), end = c(22.39), frequency = 60)
sredeRec <- ts(redeRec, start = c(19.59), end = c(22.39), frequency = 60)

#Plotando as Séries temporais

plot(scpu)
plot(sram)
plot(sdisco)
plot(sredeEnv)
plot(sredeRec)

#Decomposição dessas séries para saber da sazonalidade

plot(decompose(scpu))
plot(decompose(sram))
plot(decompose(sdisco))
plot(decompose(sredeEnv))
plot(decompose(sredeRec))

#Previsão
modelo_cpu <- auto.arima(scpu)
modelo_ram <- auto.arima(sram)
modelo_disco <- auto.arima(sdisco)
modelo_redeEnv <- auto.arima(sredeEnv)
modelo_redeRec <- auto.arima(sredeRec)


previsao_cpu <- forecast(modelo_cpu, h=60)
plot(previsao_cpu)
previsao_ram <- forecast(modelo_ram, h=60)
plot(previsao_ram)
previsao_disco <- forecast(modelo_disco, h=60)
plot(previsao_disco)
previsao_redeEnv <- forecast(modelo_redeEnv, h=60)
plot(previsao_redeEnv)
previsao_redeRec<- forecast(modelo_redeRec, h=60)
plot(previsao_redeRec)
