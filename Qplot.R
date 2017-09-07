
#instalando ggplot2
install.packages("ggplot2")
#ggplot funciona com dataframes

#Pegando data 
stats <- read.csv(file.choose())

# data = DefineOsDadosQueVcVaiTrabalhar, 
# x = " algo que tu quer que va nop eixo x"
# y = " o que tu quer que va no eixo y"
qplot(data = stats, x = Internet.users)
qplot(data = stats, x = Income.Group,y=Birth.rate)
qplot(data = stats, x = Income.Group,y=Birth.rate, size= I(3))
# O I na frente dos numeros quer dizer todos
qplot(data = stats, x = Income.Group,y=Birth.rate, size= I(3),color=I("blue"))

#__________________________Visualizacao

qplot(data = stats, x = Internet.users, y = Birth.rate,color = Income.Group)

#Se quisermos mudar o formato(shape)(tem uma figura que mostra o valor de cada formato)
qplot(data = stats, x = Internet.users, y = Birth.rate,color = Income.Group,shape = I(2) )

#Se quisermos deixar transparente ou levemente transparente (vai de 0 a 1) com 0 totalmente transparente e 1 totalmente opaco
qplot(data = stats, x = Internet.users, y = Birth.rate,color = Income.Group,shape = I(2),alpha = I(0.5) )

#Colocando um titulo um cima
qplot(data = stats, x = Internet.users, y = Birth.rate,color = Income.Group,shape = I(2) ,main ="Nome do titulo")









