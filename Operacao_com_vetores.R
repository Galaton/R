#Operacao entre vetores

#Soma subitracao divisao multiplicacao e comparacao,
#todas estas operacoes numero por numero e feita com simples sinais em r

#Exemplo

v1<-c(1,2,3,4,5)
v2<-c(1,2,3,4,5)

v3<-v1+v2
v3

v4<-v1-v2
v4

v5<-v1==v2
v5

v6<-v1<v2
v6

#Operacoes com vetores em tamanhos diferentes 

a1<-c(3,5,8,2)#note que a1 tem 5 elementos a menos
a2<-c(1,2,3,4,5,6,7,8,9)

a3<-a1-a2 #aqui ele vai pegar as primeiras posicoes e subtrair normal, e depois
          #ele vai replicar o vetor a1 para subtrair com o resto de a2
a3        #Se o vetor meor nao for multiplo do maior a linguagem vai levantar warning 









