# Adicione uma data fictícia para as horas
data_hora <- as.POSIXct(paste(Sys.Date(), etl.cpu.view$data_hora))

par(mfrow=c(1,1), mar=c(4,4,4,4))
# Crie o gráfico de linha
plot(data_hora, etl.cpu.view$dado_coletado, type = "l", col = "black", xlab = "Hora", ylab = "Uso de CPU", main = "Uso de CPU x Tempo")

# Adicione uma linha horizontal na média
mean_value <- mean(etl.cpu.view$dado_coletado)
segments(min(data_hora), mean_value, max(data_hora), mean_value, col = "#FFD700", lty = 1, lwd = 2)

# Calcule o primeiro quartil (Q1)
priQ_value <- quantile(etl.cpu.view$dado_coletado, probs = 0.25)
segments(min(data_hora), priQ_value, max(data_hora), priQ_value, col = "#00CED1", lty = 1, lwd = 2)

terQ_value <- quantile(etl.cpu.view$dado_coletado, probs = 0.75)
segments(min(data_hora), terQ_value, max(data_hora), terQ_value, col = "#DC143C", lty = 1, lwd = 2)

legend("topright", legend = c("Perigo", "Risco", "Estável"), col = c("#DC143C", "#FFD700", "#00CED1"), lty = 1)


#RAM
# Adicione uma data fictícia para as horas
data_hora <- as.POSIXct(paste(Sys.Date(), etl.cpu.view$data_hora))

par(mfrow=c(1,1), mar=c(4,4,4,4))
# Crie o gráfico de linha
plot(data_hora, etl.ram.view$usado, type = "l", col = "black", xlab = "Hora", ylab = "Uso de RAM", main = "Uso de RAM x Tempo")

# Adicione uma linha horizontal na média
mean_value <- mean(etl.ram.view$usado)
segments(min(data_hora), mean_value, max(data_hora), mean_value, col = "#FFD700", lty = 1, lwd = 2)

# Calcule o primeiro quartil (Q1)
priQ_value <- quantile(etl.ram.view$usado, probs = 0.25)
segments(min(data_hora), priQ_value, max(data_hora), priQ_value, col = "#00CED1", lty = 1, lwd = 2)

terQ_value <- quantile(etl.ram.view$usado, probs = 0.75)
segments(min(data_hora), terQ_value, max(data_hora), terQ_value, col = "#DC143C", lty = 1, lwd = 2)

legend("topright", legend = c("Perigo", "Risco", "Estável"), col = c("#DC143C", "#FFD700", "#00CED1"), lty = 1)



#DISCO
# Adicione uma data fictícia para as horas
data_hora <- as.POSIXct(paste(Sys.Date(), etl.cpu.view$data_hora))

par(mfrow=c(1,1), mar=c(4,4,4,4))
# Crie o gráfico de linha
plot(data_hora, etl.disco.view$usado, type = "l", col = "black", xlab = "Hora", ylab = "Uso de Disco", main = "Uso de Disco x Tempo")

# Adicione uma linha horizontal na média
mean_value <- mean(etl.disco.view$usado)
segments(min(data_hora), mean_value, max(data_hora), mean_value, col = "#FFD700", lty = 1, lwd = 2)

# Calcule o primeiro quartil (Q1)
priQ_value <- quantile(etl.disco.view$usado, probs = 0.25)
segments(min(data_hora), priQ_value, max(data_hora), priQ_value, col = "#00CED1", lty = 1, lwd = 2)

terQ_value <- quantile(etl.disco.view$usado, probs = 0.75)
segments(min(data_hora), terQ_value, max(data_hora), terQ_value, col = "#DC143C", lty = 1, lwd = 2)

legend("topright", legend = c("Perigo", "Risco", "Estável"), col = c("#DC143C", "#FFD700", "#00CED1"), lty = 1)


#REDE - BYTES ENVIADOS
# Adicione uma data fictícia para as horas
data_hora <- as.POSIXct(paste(Sys.Date(), etl.cpu.view$data_hora))

par(mfrow=c(1,1), mar=c(4,4,4,4))
# Crie o gráfico de linha
plot(data_hora, etl.rede.view$env_mb, type = "l", col = "black", xlab = "Hora", ylab = "Bytes Enviados de Rede", main = "Bytes Enviados de Rede x Tempo")

# Adicione uma linha horizontal na média
mean_value <- mean(etl.rede.view$env_mb)
segments(min(data_hora), mean_value, max(data_hora), mean_value, col = "#FFD700", lty = 1, lwd = 2)

# Calcule o primeiro quartil (Q1)
priQ_value <- quantile(etl.rede.view$env_mb, probs = 0.25)
segments(min(data_hora), priQ_value, max(data_hora), priQ_value, col = "#00CED1", lty = 1, lwd = 2)

terQ_value <- quantile(etl.rede.view$env_mb, probs = 0.75)
segments(min(data_hora), terQ_value, max(data_hora), terQ_value, col = "#DC143C", lty = 1, lwd = 2)

legend("topright", legend = c("Perigo", "Risco", "Estável"), col = c("#DC143C", "#FFD700", "#00CED1"), lty = 1)


#REDE - BYTES RECEBIDOS
# Adicione uma data fictícia para as horas
data_hora <- as.POSIXct(paste(Sys.Date(), etl.cpu.view$data_hora))

par(mfrow=c(1,1), mar=c(4,4,4,4))
# Crie o gráfico de linha
plot(data_hora, etl.rede.view$rec_mb, type = "l", col = "black", xlab = "Hora", ylab = "Bytes Recebidos de Rede", main = "Bytes Recebidos de Rede x Tempo")

# Adicione uma linha horizontal na média
mean_value <- mean(etl.rede.view$rec_mb)
segments(min(data_hora), mean_value, max(data_hora), mean_value, col = "#FFD700", lty = 1, lwd = 2)

# Calcule o primeiro quartil (Q1)
priQ_value <- quantile(etl.rede.view$rec_mb, probs = 0.25)
segments(min(data_hora), priQ_value, max(data_hora), priQ_value, col = "#00CED1", lty = 1, lwd = 2)

terQ_value <- quantile(etl.rede.view$rec_mb, probs = 0.75)
segments(min(data_hora), terQ_value, max(data_hora), terQ_value, col = "#DC143C", lty = 1, lwd = 2)

legend("topright", legend = c("Perigo", "Risco", "Estável"), col = c("#DC143C", "#FFD700", "#00CED1"), lty = 1)

