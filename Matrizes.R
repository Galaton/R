# Matrizes

#se a for uma matriz 3 por 5(3 linhas 5 colunas)
# e quisermos acessar a posicao linha 2 coluna 4
# fazemos assim a[2,4]

# se quisermos acessar uma linha inteira do mesmo vetor basta
# digitar a[2,] e acessaremos toda a linha 2

# o mesmo vale se quisermos pegar uma coluna a[,2]


#criando matrizes
# 1 funcao matrix()

# ela transforma um vetor em matriz
#matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE,dimnames = NULL)
#exemplo
v<-c(1,2,3,4,5,6,7,8,9,10,11,12)
d<- matrix(v,3)
d

# 2 funcao rbind()
# ele pega vetores(que tem que ser do mesmo tamanho) e coloca um em baixo do 
#outro para formar uma matriz
a<-rnorm(5,10)
b<-rnorm(5,10)
a
e<-rbind(1:5,a,b)
e

# 3 funcao cbind()
# tranforma vetores em matrizes colocando-os lado a lado 
# (cada vetor vira uma coluna)

i<-cbind(1:5,a,b)
i
