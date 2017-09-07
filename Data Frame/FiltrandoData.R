
stats <- read.csv(file.choose())

#Filtrando data

head(stats)
# Queremos saber os paises com menos de 2 internet users
filter <- stats$Internet.users < 2
# Agora se colocarmos filter dentro de stats toda vez que for true vai mostrar a linha e
# quando for false nao
stats[filter,]

# podemos tambem fazer assim
stats[stats$Birth.rate > 40,]
stats[stats$Income.Group == "High income",]

#podemos tambem usar 2 parametros 
stats[stats$Birth.rate > 40 & filter,]




















