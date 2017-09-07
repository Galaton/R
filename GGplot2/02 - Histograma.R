  #verifica qual o work directory
  getwd()
  #seta o word directory
  setwd('/home/gabriel/Dropbox/ProgramStuff/R/GGplot2')
  
  #carrega os filmes para o dataframe filmes
  filmes <- read.csv('Movie-Ratings.csv')
  
  #R nao suporta simbolos, logo as porcentagens nos nomes das colunas vao aparecer como ..
  # para contornar isto trocamos os nomes das colunas
  colnames(filmes) <- c("Filme","Genero","AvaRT","AvaAud","Orcamento","Ano")
  # dando aquela conferida se tudo deu certo
  head(filmes)
  
  # Carrego a biblioteca ggplot2
  library(ggplot2)
  
  #---------------Histogramas
  # Conjunto de retangulos sob o eixo x com area proporcional a prequencia de classe
  
  w <- ggplot(data=filmes, aes(x=filmes$Orcamento))

  # note que so usamos um eixo no codigo acima
  # bindwidth e a largura de banda da amostra que queremos analizar
  # fill e para pintar de uma cor
  w + geom_histogram(binwidth = 10, aes(fill=filmes$Genero))
  
  # ADICIONANDO UMA BORDA para dividir as cores
  # para adicionar bordar usamos colour e a cor entre aspas duplas
  w + geom_histogram(binwidth = 10, aes(fill=filmes$Genero),colour = "Black")
  
  #GRAFICOS DE DENSIDADE
  
  w + geom_density(aes(fill=Genero),position = "stack")
  #------------------------------
  
  t <- ggplot(data = filmes, aes(x=filmes$AvaRT))
  t+ geom_histogram(binwidth = 10,fill="White", colour="Blue")
  
  #Outro modo De fazer exatamente a mesma coisa e em vez de usarmos o aes no comeco
  #colocarmos ele dentro do geom
  
  g <- ggplot(data = filmes)
  t + geom_histogram(aes(x = filmes$AvaRT),
                     binwidth = 10,
                     fill="White",
                     colour="Blue")
  
  #Tambem posso dizer apenas g <- ggplot()
  
  #---------------------------------
  # Facets
  
  #Preparado dados
  v <- ggplot(data=filmes, aes(x=filmes$Orcamento))
  v + geom_histogram(bindwidth=10, aes(fill=Genero), colour = "Black")
  
  # facets [e em vez de criar um grafico com tudo ele divide em varios graficos
  
  v + geom_histogram(bindwidth=10, aes(fill=Genero), colour = "Black") + 
  facet_grid(Genero~.)
  # No primeiro campo e a linha que voce quer e separado por ~ vai a  coluna
  # Note que . nao e uma coluna dai vai entender que voce nao quer nada na coluna
  # Vale reparar que todos esta'ao com a mesma escala de tamanho 
  # isto dificulta a vizualizacao
  # se quisermos melhorar isto basta colocar scales="free"
  v + geom_histogram(bindwidth=10, aes(fill=Genero), colour = "Black") + 
    facet_grid(Genero~. , scales="free")
  
  #------------------------------------
  #scatterplots
  
  #Preparado dados
  
  a <- ggplot(data=filmes, aes(x=filmes$Filme, y=filmes$AvaRT, colour = Genero))
  a + geom_point(size = 3)
  
  a + geom_point(size = 3) + facet_grid(Genero~.)
  
  a + geom_point(size = 3) + facet_grid(.~Ano)
  
  a + geom_point(size = 3) + facet_grid(Genero~Ano)
  
  # Facets nada mais e do que varias camadas de graficos, em vez de varios dados em um grafico so
  #sao varios graficos com poucos dados
  
  
  
  
  
  
  