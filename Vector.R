
MyFirstVector <- c(3,8,44,70) #c is the func that create a vector
MyFirstVector # here i see my vec
is.numeric(MyFirstVector)#check if that object is a numeric
is.integer(MyFirstVector)#is not integer because in default r storage numbers as a double
is.double(MyFirstVector)

V2<-c(3L,23L,333L)#the L trasnform in integer
is.numeric(V2)
is.integer(V2)
is.double(V2)

V3<- c("a","b33","Hello",7)#the 7 is converte for a char,because in r you only have the same type of elements in the same vector

seq() #sequence
rep() #replicate

seq(1,15)#create a sequence start in one(1,2,3,4,...,15) and stop at 15
1:15 # do the same that sequence

#a vantagem de usar sequence [e] que podemos passar um terceiro parametro
#que diz de quanto em quanto queremos incrementar at[e o numero]
#Exemplo
seq(1,15,2)#aqui e de 1 ao 15 incrementado de 2 em 2

z<-seq(1,15,4)
z

rep(3,50)#replica o numero 3 50 vezes
d<-rep(8,40)
rep("a",50)
#pode at[e replicar vetores]

x<- c(80,20)
y<- rep(x,10)

y



