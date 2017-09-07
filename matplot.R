# esta parte do codigo so deve funcionar com os dados do basket ja carregados previamente

#para usar isto temos que colocar uma matriz dentro dela
#cada coluna da matriz sera um dado do grafico
#para vermos od dados do nosso fieldGoals temos que transpor a matriz
#inverter linhas por colunas

#transpondo uma funcao
t(FieldGoals)

matplot(t(FieldGoals), type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players,pch=15:18,col=c(1:4,6),horiz=F)

#Queremos vizualizar os minutos jogados de cada jogador

matplot(t(MinutesPlayed), type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players,pch=15:18,col=c(1:4,6),horiz=F)

#agora queremos apenas os minutos jogados dos 3 primeiros jogadores

#Criamos uma variavel auxiliar com estes 3
Data <- MinutesPlayed[1:3,]

matplot(t(Data), type="b",pch=15:18,col=c(1:4,6))
#Na legenda tambem temos que modificar players para apenas os 3 primeiros 
legend("bottomleft",inset=0.01,legend=Players[1:3],pch=15:18,col=c(1:4,6),horiz=F)


#agora se quisermos apenas um jogador nao podemos apenas fazer isto
Data <- MinutesPlayed[1,]
matplot(t(Data), type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players[1],pch=15:18,col=c(1:4,6),horiz=F)
# pois o r pensa que uma matriz de 1 linha deve ser convertido para vetor 
# e o matplot precisa de uma matriz para funcionar
#para fazer isto funcionar devemos 
Data <- MinutesPlayed[1,,drop = F]
matplot(t(Data), type="b",pch=15:18,col=c(1:4,6))
legend("bottomleft",inset=0.01,legend=Players[1],pch=15:18,col=c(1:4,6),horiz=F)


















