#como acessar posi;'ao do vetor

w <- c("a","b","c","d","e")
w

w[1] #acessa "a"
w[2] #acessa "b"

w[-1] #acessa todas menos "a"
w[-3] #todas menos c

w[1:3] #acessa todos de 1 a 3

v <- w[-2] #passa o vetor w sem a posicao 2 para v
v

w[c(1,3,5)] #aqui estoud dizendo que eu quero as posicoes 1,3,5 do vetor w
w[c(-2,-4)] # aqui eu quero o vetor w menos a posicao 2 e a 4 
