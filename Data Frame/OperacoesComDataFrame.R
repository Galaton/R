
stats <- read.csv(file.choose())

# ---------------------- Operacoes com data frame

#queremos apenas os 10 primeiros dados
stats[1:10,]

#queremos apenas as linas 10,20,51
stats[c(10,20,51),]

#----------------------
# Em matrizes se queriamos pegar apenas uma linha r nos retornava um vetor com aquela linha,
# não matriz, quando manipulamos dataframe isto nao acontece.
# Porem, se quisermos uma coluna ele vai nos retornar um vetor
# para arrumar isto basta colocar o drop = F

#dando problema
stats[,1]

#Arrumado
stats[,1,drop =F]
#---------------------
# Podemos multiplicar colunas
stats$Birth.rate * stats$Internet.users

# Podemos usar os resultados de operacoes entre colunas para criar outra coluna
stats$MyCalc <- stats$Birth.rate * stats$Internet.users
stats

# Podemos tambem criar uma coluna apartir de um vetor
stats$abc <- 1:5
# Como o vetor utilizado so tem 5 posicoes, quando chegar no 5 vai comecar no 1 denovo
# note o vetor que vamos transformar em coluna tem que ser multiplo do numero de linhas 

#--------------------
#Removendo colunas 
# NomeDaVariavel$SomeDaColuna <- NULL
stats$MyCalc <- NULL

