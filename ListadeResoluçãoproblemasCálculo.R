

set.seed(20)
notas <- data.frame(Matricula = sample(x = 011475:012990, size = 30, replace = FALSE),
                    ac1 = sample(x = 1:10, size = 30, replace = TRUE),
                    ac2 = sample(x = 1:10, size = 30, replace = TRUE),
                    prova_final= sample(x = 1:10, size = 30, replace = TRUE))
Nmedia <- 0.4*notas$ac1+0.4*notas$ac2+0.2*notas$prova_final
media <- mean(Nmedia)
ac1media <- mean(notas$ac1)
ac2media <- mean(notas$ac2)
prova_finalmedia <- mean(notas$prova_final)
valores <- c(media,ac1media,ac2media,prova_finalmedia)
aprovados <- notas[Nmedia>=7,]

hist(Nmedia,
     breaks = seq(0,10, by = 1),
     xlab="Notas",
     ylab="Frequência",
     col = "purple")

barplot(valores,
        names.arg = c("Média","AC1","AC2","Prova Final"),
        main = "Relatorio Geral",
        col = "orange",
        ylab = "Nota")

barplot(c(nrow(aprovados),nrow(notas)-nrow(aprovados)),
        names.arg = c("Aprovados","Reprovados"),
        main = "Aprovação",
        col = c("blue","red"),
        ylab = "Quantidade de alunos")

#3) Dados dois quadros, análise e utilize o quadro 2 para criar colunas novas no quadro 1. E plote uma
#representação gráfica de barras do faturamento de cada vendedor. Faça insights

vendedor<-rep(c("Ana","Flavia","Pedro","Mariana"),8)
dia<-rep(c(1,2),each=4)
produto<-c("saia","casaco","vestido","meia","calçaFlaire","calçaSkinny","calçaSkinny","manta")
quantidade<-c(1,2,1,5,3,0,3,4)
ProdutosxVendedor <- data.frame(vendedor,dia,produto,quantidade)
ProdutosxVendedor

produto<- c("calça","vestido","blusa","manta","saia","casaco","meia")
preçoUnitário<- c(240.00,320.00,98.00,69.00,145.00,289.00,39.00)
custoUnitário<- c(210.00,160.00,60.00,39.00,89.00,144.00,15.00)
PreçosUnitário <- data.frame(produto,preçoUnitário,custoUnitário)
PreçosUnitário

ProdutosxVendedor <- merge(ProdutosxVendedor, PreçosUnitário, by.x = "produto", by.y = "produto", all.x = TRUE)
ProdutosxVendedorfat <- ProdutosxVendedor$quantidade * (ProdutosxVendedor$precoUnitario - ProdutosxVendedor$custoUnitario)

hist(ProdutosxVendedorfat,
     main = "Histograma do Faturamento de cada Vendedor",
     xlab = "Faturamento",
     ylab = "Frequência",
     col = "skyblue")

#4) Crie o seguinte código em R:
#Dados dois valores, retorna o maior entre eles. Obs.: Insira mensagens de aviso para o usuário caso o
#valor que ele insira não seja numérico.

retonar <- function(valor1, valor2) {
  if (!is.numeric(valor1) || !is.numeric(valor2)) {
    print("Por favor, insira valores numéricos.")
  } else {
    if (valor1 > valor2) {
      return(valor1)
    } else {
      return(valor2)
    }
  }
}

valor1<- readline(prompt = "Digite o primeiro valor:")
valor2<-readline(prompt = "Digite o segundo valor:")
valor1<- as.integer(valor1)
valor2<- as.integer(valor2)

MaiorValor <- retonar(valor1, valor2)

if (!is.null(MaiorValor)) {
  print(paste("O maior valor entre", valor1, "e", valor2, "é", MaiorValor))
}

#5) Utilizando seed =10, crie um vetor de valores numéricos com o seguinte código:
#set.seed(seed)
#vetorNumerico <- sample(x = 1:25, size = 800, replace = TRUE)
#Calcule a frequência em que cada número aparece

set.seed(10)
vetorNumerico <- sample(x = 1:25, size = 800, replace = TRUE)
freq <- table(vetorNumerico)
print(freq)

#6) Para estudar o comportamento das vendas, um administrador coleta informações sobre o número de
#itens vendidos nos últimos 30 dias. Simule a coleta destes dados, onde as vendas variem entre 28 e 52
#unidades. Use set.seed(50), de forma que possamos reproduzir os resultados dos chamados de Geradores
#de Números Aleatórios. Estes são, na verdade, Pseudo-Aleatórios porque são totalmente algorítmicos:
#dada a mesma semente, você obtém a mesma sequência.

vendas <- data.frame(Qtd = sample(x = 28:52, size = 30, replace = TRUE),
                     DiaMes = seq(from=as.Date("2021-09-01"), to=as.Date("2021-09-30"), by="day"),
                     DiaSemana = weekdays(seq(from=as.Date("2021-09-01"), to=as.Date("2021-09-30"),
                                              by="day")))

#a) Plote um gráfico de dispersão da quantidade de vendas por dia.
plot(vendas$DiaMes, vendas$Qtd, main = "Frequência da Qtd de vendas",xlab = "Dia", ylab =
       "Qtd vendas")

#b) Qual foi a variação das vendas no mês de análise?
varmes <- max(vendas$Qtd) - min(vendas$Qtd)

#c) Qual é a média de quantidade de vendas?
medven<- round(mean(vendas$Qtd))

#d) Construa o histograma da frequência de vendas. Coloque o título e os rótulos nos eixos e determine
#uma cor para o histograma.
hist(vendas$Qtd, main = "Frequência da Qtd de vendas",xlab = "Qtd vendas", ylab =
       "Frequência", col = "green")

#Você deverá analisar e justificar os itens a,b,c e d.

#a) O gráfico de dispersão ajuda a visualizar como a quantidade de vendas varia ao
#longo dos dias do mês de setembro de 2021.

#b) A variação das vendas no mês de análise é calculada como a diferença entre o
#valor máximo e o valor mínimo das vendas. Isso dá uma ideia da amplitude dos dados
#de vendas ao longo do mês.

#c) A média da quantidade de vendas é calculada para fornecer um valor
#representativo da quantidade média de vendas durante o período de 30 dias.

#d) O histograma de frequência de vendas é uma representação visual da distribuição
#dos dados de vendas. A cor verde é escolhida para destacar o histograma.

#7) Gere as seguintes sequências e atribua a uma variável:
#a) x1 = 1, 2, 3, 4
#b) x2 = 2, 5, 8, 11
#c) x3 = A, B, C, D
#d) x4 = a, b, c, d
#e) x5 = A, C, E, G
#f) x6 = 10, 9, 8, 7
#g) x7 = 10, 8, 6, 4
#h) x8 = 2, 2, 2, 2, 5, 5, 5, 5, 8, 8, 8, 8
#i) x9 = recebe todas as sequências anteriores (x1, x2, x3, x4, x5, x6, x7, x8)

x1 <- c(1, 2, 3, 4)
x2 <- c(2, 5, 8, 11)
x3 <- c("A", "B", "C", "D")
x4 <- c("a", "b", "c", "d")
x5 <- c("A", "C", "E", "G")
x6 <- c(10, 9, 8, 7)
x7 <- c(10, 8, 6, 4)
x8 <- c(rep(2, 4), rep(5, 4), rep(8, 4))
x9 <- list(x1, x2, x3, x4, x5, x6, x7, x8)

#8) Atribua a data de hoje para a variável x e a data do seu nascimento para a variável y e verifique a sua
#idade em dias. Verifique se sua idade está correta em anos.

x <- as.Date(Sys.Date())
y <- as.Date("2005-06-15")
diferenca <- as.numeric(x - y)
cat("Sua idade em dias é:", diferenca, "\n")
idadeAnos <- diferenca / 365
cat("Sua idade em anos é aproximadamente:", idadeAnos)

#9) Dados dois quadros, análise e utilize o quadro 2 para criar colunas novas no quadro 1. E plote uma
#representação gráfica de barras do faturamento de cada vendedor. Faça insights

# a) Quantas calças (flaire + skinny) foram vendidas? Qual o Faturamento total em calças?
calcasvendidas <- sum(ProdutosxVendedor$quantidade[ProdutosxVendedor$produto %in% c("calçaFlaire", "calçaSkinny")])
faturamentocalcas <- sum(ProdutosxVendedor$faturamento[ProdutosxVendedor$produto %in% c("calçaFlaire", "calçaSkinny")])

cat("Foram vendidas", calcasvendidas, "calças, com um faturamento total de", faturamentocalcas, "reais.\n\n")

# b)Qual vendedor obteve maior desempenho de vendas (maior faturamento)? E qual vendedor obteve
#menor desempenho?
maiordesempenho <- ProdutosxVendedor$vendedor[which.max(ProdutosxVendedor$faturamento)]
menordesempenho <- ProdutosxVendedor$vendedor[which.min(ProdutosxVendedor$faturamento)]

cat("O vendedor com maior desempenho de vendas foi", maiordesempenho)
cat("O vendedor com menor desempenho de vendas foi", menordesempenho)

# c) Qual faturamento gerado pelo vendedor Pedro?
faturamento_pedro <- sum(ProdutosxVendedor$faturamento[ProdutosxVendedor$vendedor == "Pedro"])
cat("O faturamento gerado pelo vendedor Pedro foi de", faturamento_pedro, "reais.\n")


#10) Para estudar o desempenho dos vendedores, o gerente de uma loja de vestuário coleta informações sobre
#o número de peças vendidas por cada vendedor nos últimos 30 dias. Simule a coleta destes dados, conforme
#as instruções:
#a) Use set.seed(20);
#b) os vendedores são: Ana, Flavia, Pedro e Mariana. Cada vendedor deve apresentar dados referentes às
#suas vendas para os 30 dias; (Dica: use a função rep() e a cada 4 elementos repita a lista de vendedores;
#Faça o vetor dias ter tamanho 30*4);
#c) os produtos comercializados são: calçaFlaire, calçaSkinny, vestido, blusa, manta, saia, casaco, meia;
#as vendas devem variar entre 0 e 5 unidades diárias;

set.seed(20)
vendedores <- c("Ana", "Flavia", "Pedro", "Mariana")
produtos <- c("calçaFlaire", "calçaSkinny", "vestido", "blusa", "manta", "saia", "casaco", "meia")
dados_vendas <- data.frame(
  Vendedor = rep(vendedores, each = 30),
  Dia = rep(1:30, times = 4),
  Produto = sample(produtos, 30 * 4, replace = TRUE),
  Quantidade = sample(0:5, 30 * 4, replace = TRUE)
)
head(dados_vendas)

#11) Crie as seguintes funções:
#Dado um vetor, retorna um novo vetor de somas acumuladas a cada posição.
#Exemplo: Entrada: x <- c(1,3,8,2,1,3) ; Saída: 1, 4, 12, 14, 15, 18.

soma_acumulada <- function(vetor) {
  novo_vetor <- cumsum(vetor)
  return(novo_vetor)
}

x <- c(1, 3, 8, 2, 1, 3)
resultado <- soma_acumulada(x)
cat("Saída:", paste(resultado, collapse = ", "))

#12) Projetinho: Dada a base de dados de temperatura das cidades do mundo, com o arquivo em csv, aplique
#técnicas de ETL e sumarizações para criar uma nova tabela que apresente a média do último ano de coleta
#das temperaturas de cada cidade. Utilize as ferramentas que você domina. Feito isso, apresente um gráfico
#das cidades que tem as 5 maiores temperatura mundiais.
#Avalie se vc precisa tratar os dados, limpar, excluir, para que surjam novas tabelas, mais reduzidas, de modo
#a facilitar os insights. Mostre com prints de tela todas fases do projetinho.

ordemDesc <- cityTemperature[order(cityTemperature$AvgTemperature, decreasing = TRUE),]
top5 <- head(ordemDesc,5)
barplot(top5$AvgTemperature, names.arg = top5$Country, col = "orange",main = "top 5 temperaturas")
