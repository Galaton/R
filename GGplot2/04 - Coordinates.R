# Coisas que precisamso
#verifica qual o work directory
getwd()
#seta o word directory
setwd('/home/gabriel/Dropbox/ProgramStuff/R/GGplot2')

#carrega os filmes para o dataframe filmes
filmes <- read.csv('Movie-Ratings.csv')


# Carrego a biblioteca ggplot2
library(ggplot2)

#R nao suporta simbolos, logo as porcentagens nos nomes das colunas vao aparecer como ..
# para contornar isto trocamos os nomes das colunas
colnames(filmes) <- c("Filme","Genero","AvaRT","AvaAud","Orcamento","Ano")
a <- ggplot(data=filmes, aes(x=filmes$AvaRT, y=filmes$AvaRT, colour = Genero,size = filmes$Orcamento))

a + geom_point()
#---------------------------------
  # Cordenadas

# se eu quiser pegar so um pedaco do grafico
# basta eu adicionar um limitador de eixo
# xlim(ponto inicial,ponto final) limita no eixo x
# ylim() no eixo y

a + geom_point() +ylim(50,75)

# Porem isto nao funciona bem sempre

b <- ggplot(data=filmes, aes(x=Orcamento))
b + geom_histogram(binwidth = 10, aes(fill = Genero),colour = "Black") + ylim(0,50)
# aqui por exemplo cortou todos os dados contidos no topo

# modo de fazer sem problemas
b + geom_histogram(binwidth = 10, aes(fill = Genero),colour = "Black") +
  coord_cartesian(ylim=c(0,50))

#-----------------------------------------------------------------
# melhorando grafico com multiplos graficos

a + geom_point(size = 3) + facet_grid(Genero~Ano)

#com zoom
a + geom_point(size = 3) + facet_grid(Genero~Ano) +  coord_cartesian(ylim=c(0,100))

# ---------------------------------------------------------------
# Temas

# colocamos o grafico em um objeto para ficar mais rapido o que vamos faver no futuro
h <- b + geom_histogram(binwidth = 10, aes(fill = Genero),colour = "Black") 

# mudando o nome onos eixos,
# para isto usamos as func xlab("Nome do eixo") e ylab()

h <- h + xlab("Orcamento") + ylab("NUMERO DE FILEMS")

# agora mudando o tamanho da letra e a cor

h <- h + theme(axis.title.x = element_text(colour="Yellow", size = 30), axis.title.y = element_text(colour = "Green",size = 30))

h

# mudando a legenda

h <-h + theme(legend.title = element_text(size = 30),
              legend.text = element_text(size = 20)
              )

# adicionando titulo ao grafico

h + ggtitle("Dinheiro") + theme(plot.title = element_text(colour = "Red",
                                                          size = 50,
                                                          family = "Arial") )



















