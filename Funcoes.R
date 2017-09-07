

x<-rnorm(5) # Colocamos 5 valores randomicos dentro do vetor x
x

# Vercao de R do for
for(i in x){
  print(i)
}
# Vercao normal do for
for(j in 1:5){
  print(x[j])
}

#se eu quero saber como funciona uma funcao eu coloco um ponto
#de interrogacao na frente dela e olho para plots no Rstudio

?rnorn()
#ou simplismente buscar o nome dela na aba help
#quando tem um sinal de igual dentro da especificacao da funcao quer dizer que aquele 
#e o default, caso voce nao definir vai aquilo
#exemplo pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
#aqui eu so preciso definir q, porem posso definir o resto
