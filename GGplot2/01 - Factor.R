  #verifica qual o work directory
  getwd()
  #seta o word directory
  setwd('/home/gabriel/Dropbox/ProgramStuff/R/GGplot2')
  
  #carrega os filmes para o dataframe filmes
  filmes <- read.csv('Movie-Ratings.csv')
  
  #ve os dados obtidos
  head(filmes)
  
  #R nao suporta simbolos, logo as porcentagens nos nomes das colunas vao aparecer como ..
  # para contornar isto trocamos os nomes das colunas
  colnames(filmes) <- c("Filme","Genero","Avaliacao do Rotten Tomatoes","Avaliacao da audiencia","orcamento em milhoes","ano do lancamento")
  # dando aquela conferida se tudo deu certo
  head(filmes)
  
  str(filmes)
  #aqui e legal analizar como o r interpretou nossos dados
  # factor(elementos) foi a quantidade de elementos agrupaveis que r achou
  # em genero r achou 7 diferentes generos
  # note que ano seria util como factor, porem ele n'ao se encontra como este tipo de elemento
  # para transformar algo em factor basta
  
  filmes$`ano do lancamento`<-factor(filmes$`ano do lancamento`)
  # a fun;'ao factor transforma em factor(acha os padroes) da coluna passada, e depois substituimos esta coluna factorada na coluna original
  
  #agora usamos outra funcao que nos mostrara dados que r achou uteis, sobre cada coluna, e nos mostrar
  summary(filmes)
  
  # --------- Aesthetics (estetica) dizendo o que queremos nos eixos x,y,z ... do nosso grafico
  
  # Carrego a biblioteca ggplot2
  library(ggplot2)
  
  #aes e o que representa aesthetics
  ggplot(data = filmes, aes(x = `Avaliacao do Rotten Tomatoes` , y = `Avaliacao da audiencia`))
  # se rodarmos so isto nao vai dar em nada pos r nao sabe em que formato queremos nosso grafico(linhas pontilhados bolhas ...)
  
  # Adicionando geometria, geom_o formato que quero
  ggplot(data = filmes, aes(x = `Avaliacao do Rotten Tomatoes` , y = `Avaliacao da audiencia`)) + geom_point()
  
  #alguns experimentos
  ggplot(data = filmes, aes(x = `Avaliacao do Rotten Tomatoes` , y = `Avaliacao da audiencia`)) + geom_line()
  
  #adicionando cor
  ggplot(data = filmes, aes(x = `Avaliacao do Rotten Tomatoes` , y = `Avaliacao da audiencia`, colour = Genero)) + geom_point()
  
  #adicionando tamanho as bolinhas
  ggplot(data = filmes, aes(x = `Avaliacao do Rotten Tomatoes` , y = `Avaliacao da audiencia`, colour = Genero, size = filmes$`orcamento em milhoes`)) + geom_point()
  
  # Posso carregar os dados dos graficos para objetos|variaveis
    p <- ggplot(data = filmes, aes(x = `Avaliacao do Rotten Tomatoes` , y = `Avaliacao da audiencia`, colour = Genero)) 
  
  # porem se rodarmos p verificaremos que o grafico dele e nulo, pois n'ao adicionamos uma forma geometrica a ele
  p
  
  # para adicionar basta + geom_a forma que queres
  p + geom_bin2d()
  # e podemos adicionar mais de um formato( o que foi adicionado por ultimo vai ficar em cima)
  p +geom_line()+ geom_point()  
  # Para melhorar a vizualizacao podemos alterar o tamanho de cada item
  p +geom_line()+ geom_point(size = 3)
  
  
  # Reescrevendo sobre um aes
  # Basta colocar o novo padr'ao para aes dentro do geom
  # Exemplo 1
  p + geom_point(aes(size=filmes$`Avaliacao da audiencia`))
  
  # Exemplo 2
  p + geom_point(aes(size=filmes$`orcamento em milhoes`))
  
  # Exemplo 3 ( mudando os eixos )
  p + geom_point(aes(x = filmes$`orcamento em milhoes`))
  # Note que so muda o de x o de y continua igual, e o nome n'ao muda para fazermos isto tem que ser manualmente
  p + geom_point(aes(x = filmes$`orcamento em milhoes`)) + xlab("orcamento $$$")
  
  # ------------Mapping vs Setting---------------
  
  # Adicionando cor
  # Mapping 
  p + geom_point(aes(color = Genero))
   
  # Setting (note que aqui todos vao ficar verde)
  p + geom_point(color = "Green")
  
  # Erros
  p + geom_point(aes(color = "Green"))# quando colocamos dentro de aes r procura uma factore| uma categoria
  # e verde n'a oe categoria
  
  
  
  
  
  
  
  