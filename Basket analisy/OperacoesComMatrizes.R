# esta parte do codigo so deve funcionar com os dados do basket ja carregados previamente

Games
Games["ChrisBosh","2008"]

FieldGoals

# Divisao de matrizes
# se sao do mesmo tamanho r brilha, em divisao, multiplicacao, soma e tudo mais.

round(FieldGoals/Games)

round(MinutesPlayed/Games)

#pegando so um pedaco da matriz 

Games 

# agora queremos apenas os 3 primeiros jogadores nos ultimos 3 anos

Games[1:3,8:10]

#agora queremos os dados apenas do primeiro jogador e do ultimo
Games[c(1,10),]

#se pegarmos apenas uma linha de uma matriz, nao teremos outra matriz, e sim um vetor
is.matrix(Games[1,])
is.vector(Games[1,])

# Matrizes sao constituidas por 3 campos
# Matriz(Linhas|colunas|e drop)
# drop por defaut e true
# e quando drop esta true, quer dizer que se a matriz tiver tamnho 1 ela sera um vetor
# Matriz[LINHAS,COLUNAS,drop = T]

#Exemplo: 
#queremos pegar o jogador 1 no ano 2009
#se fizermos sem considerar o drop
Games[1,5]#so conseguimos o numero

#agora com o drop
Games[1,5,drop = F]




