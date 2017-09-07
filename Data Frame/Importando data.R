

# Importando data

# Usaremos a funcao read.csv()
# ela cria um data frame com os dados extraidos do csv
# data frame e como uma matriz, porem pode conter varios tipos de variavel nela

#se quisermos que alguem selecione o arquivo basta usar este comando 

statis <- read.csv(file.choose())

#outro modo de pegar um arquivo e direto da pasta

#1 passo e setar a parta 
setwd('Dropbox/ProgramStuff/R/Data%20Frame/')#aspas simples linux(ou jogar a pasta no terminal e copiar e colar)

#2 passo selecionar o arquivo

stats <- read.csv("Nome do arquivo")