data_cpu<- c(etl.cpu.view$dado_coletado)
data_ram<- c(etl.ram.view$usado)
data_disco<- c(etl.disco.view$usado)

# CPU
par(mfrow=c(1,1), mar=c(4,4,4,4))
boxplot(data_cpu, 
        main = "Distribuição de Capturas de CPU",
        ylab = "Capturas de Uso de CPU",
        col = "#191970",
        border = "black",
        horizontal = FALSE)


par(mfrow=c(1,1), mar=c(4,4,4,4))
hist(etl.cpu.view$dado_coletado, 
     main = "Frequência das Capturas de CPU",
     xlab = "Capturas de Uso de CPU",
     ylab = "Frequência de Dados",
     col = "#191970",
     border = "black")


resumo_cpu <- summary(etl.cpu.view$dado_coletado)


# RAM
par(mfrow=c(1,1), mar=c(4,4,4,4))
boxplot(data_ram, 
        main = "Distribuição de Capturas de RAM",
        ylab = "Capturas de Uso de RAM",
        col = "#4C5CAD",
        border = "black",
        horizontal = FALSE)


par(mfrow=c(1,1), mar=c(4,4,4,4))
hist(etl.ram.view$usado, 
     main = "Frequência das Capturas de RAM",
     xlab = "Capturas de Uso de RAM",
     ylab = "Frequência de Dados",
     col = "#4C5CAD",
     border = "black")

resumo_ram <- summary(etl.ram.view$usado)


# DISCO
par(mfrow=c(1,1), mar=c(4,4,4,4))
boxplot(data_disco, 
        main = "Distribuição de Capturas de Disco",
        ylab = "Capturas de Uso de Disco",
        col = "#A1B0FF",
        border = "black",
        horizontal = FALSE)


par(mfrow=c(1,1), mar=c(4,4,4,4))
hist(etl.disco.view$usado, 
     main = "Frequência das Capturas de Disco",
     xlab = "Capturas de Uso de Disco",
     ylab = "Frequência de Dados",
     col = "#A1B0FF",
     border = "black")


resumo_disco <- summary(etl.disco.view$usado)


# REDE
boxplot(etl.rede.view$env_mb, etl.rede.view$rec_mb, 
        names = c("Enviados", "Recebidos"),  # Rótulos para os boxplots
        main = "Distribuição de Capturas de Bytes de Rede",
        ylab = "Capturas de Bytes",
        col = c("#4682B4", "#ADD8E6"),  # Cores para os boxplots
        border = "black",
        horizontal = FALSE)


hist(etl.rede.view$env_mb, 
     main = "Frequência das Capturas de Bytes Enviados",
     xlab = "Capturas de de Bytes Enviados de Rede",
     ylab = "Frequência de Dados",
     col = "#4682B4",
     border = "black")

hist(etl.rede.view$rec_mb, 
     main = "Frequência das Capturas de Bytes Recebidos",
     xlab = "Capturas de de Bytes Recebidos de Rede",
     ylab = "Frequência de Dados",
     col = "#ADD8E6",
     border = "black")


resumo_disco <- summary(etl.disco.view$usado)

