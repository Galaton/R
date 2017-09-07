# Criando funcoes

NomeDaFuncao <- function(parametro1,parametro2=110){
  #parametro2 vai assumir valor de 110 caso o usuario nao passe parametros
  #parametro2 tem um parametro dafault
  
  #colocar o codigo aqui
}

CriarGrafico <- function(jogadores = 1:12 ,OqueQueremosAnalizar){
  
  Data <- OqueQueremosAnalizar[jogadores,,drop=F]
  matplot(t(Data), type="b",pch=15:18,col=c(1:4,6))
  legend("bottomleft",inset=0.01,legend=Players[jogadores],pch=15:18,col=c(1:4,6),horiz=F)
  
}
#Exemplo:Quero ver os salario dos 3 primeiros jogadores

CriarGrafico(1:3,Salary)

#Exemplo: Queremos ver o salario do jogador 6

CriarGrafico(6,Salary)

#queremos ver o de todos

CriarGrafico(,Salary)




