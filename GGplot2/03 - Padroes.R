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
  
  #-------------------------------
  
  q <- ggplot(data=filmes, aes(x=AvaRT, y=AvaAud, colour = Genero))
  
  # Melhorando a visualiza;'ao, (achando padroes)
  
  q + geom_point() + geom_smooth()
  
  # Porem o fill(contorno) natural que ele coloca so atrapalha
  # Logo vamos tirar ele
  
  q + geom_point() + geom_smooth(fill = NA)
  
  #-------------------------------
  #Boxplot
  #Tem tutorial sobre boxplot no final do curso
  
  u <- ggplot(data=filmes, aes(x=Genero, y=AvaAud,colour=Genero))
  u + geom_boxplot()
  
  # Uma apresentacao diferente disto
  u + geom_boxplot() + geom_jitter()
  
  
  
  
  
  
  
  
  
  
  