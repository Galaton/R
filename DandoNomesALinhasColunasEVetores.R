

# Dando nomes as linhas e colunas de matrizes ou posiçãoes de vetores

#Vetor generico
a <- 1:5
a

#-----------------------------------------------------------------

#verificar qual os nomes atuais 
names(a)

#dando nomes a posições do vetor
names(a) <- c("a","b","c","d","e")

a
#-----------------------------------------------------------------
#agora se eu quiser acessar a posicao 3 tenho 2 meios
# o antigo
a[3]

# ou o com o nome
a["c"]

#-----------------------------------------------------------------
# limpando nomes

names(a) <- NULL
a

#-----------------------------------------------------------------
# Dando nomes a matrizes
e<-rbind(1:5,6:10,11:15)
e

# Verificando o nome das linahs
rownames(e)

#Dando nomes a linhas
rownames(e) <- c("uno","dos","tres")
e

#Dando nomes as colunas 
colnames(e)<- c("as","9vinhas","la","do","baile")
e

#acessando estas posicoes
#exemplo numero 7

e[2,2]
e[2,"9vinhas"]
e["dos","9vinhas"]
e["dos",2]








