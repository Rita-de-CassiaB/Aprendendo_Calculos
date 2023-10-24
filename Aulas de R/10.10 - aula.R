alt <- c(3,4,3,2,5,2,3,1,3,2,6,5,4,8,6,3,5,3,7,8)
luminosidade <- rep(c("muita","pouca"),each=10)
dados <- data.frame(alt, luminosidade)
dados
str(dados)
class(alt)
class(luminosidade)
class(data.frame)
fol<-c(19,21,18,18,16,21,23,21,25,22,9,7,6,7,12,9,12,2,9,4)
dados$fol<-fol
dados
names(dados)
dados
names(dados)<-c("altura","luz","folhas")
dados
head(dados)
tail(dados)

