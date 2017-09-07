
# Explorando data

# Carrega dados
stats <- read.csv(file.choose())

#---------------------------------- Funcoes convenientes
# Descobrindo o numero de linhas
nrow(stats)

# Descobrindo o numero de colunas
ncol(stats)

# Funcao head: quando temos muitos dados e queremos olhar so os primeiros (mostra apenas as 6 primeiras linhas)
head(stats)

# Funcao tail: tipo head so que para o fim
tail(stats)

# Nas duas funcoes voce pode especificar quantas linhas voce quer ver
head(stats, n = 10)
tail(stats, n = 22)

# Se quisermos ter uma visao geral de nossos dados
str(stats)# Quando aparecer factor quer dizer que r acha que aquilo não e um texto aleatório e sim algo com algum proposito
#logo ele da numeros aquilo e agrupa em qgrupos w/(tamanho do grupo)

# Visão geral de um modo mais organizado e com mais coisas(range e tudo mais)
summary(stats)
#---------------------------------- 

# Modos de selecionar uma coluna

# 1- Podemos fazer como em matrizes
#pegando coluna3
stats[,3]
#vai retornar um vetor com todos os itens da coluna 3

# 2- Modo que so funciona com data frame
#mesma coisa nomeDaVariavel$NomeDaColuna
stats$Internet.users
#---------------------------------- 

# Se quisermos saber qual o level de agrupamento de uma determinada coluna
levels(stats$Income.Group)

