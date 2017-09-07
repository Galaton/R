#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

## profit/lucro por cada mes------------------------------------

profit <- revenue-expenses
#profit

## lucro depois das taxas----------------------------------------

tax <- 0.7 #as taixas sao 30% logo se eu multiplicar por 70% eu vou ter o valor menos as taxas
#tax

proftAfterTax <- profit*tax
proftAfterTax <- round(proftAfterTax,2)
proftAfterTax

#margem de lucro(proft margin)-------------------------------------

proftMarge <- proftAfterTax/revenue
#proftMarge

#meses bons e ruins(1 e bom| -1 e ruim| 0 e media)----------------------------
#melhor mes e pior(melhor mes = 10| pior mes = -10)

maximo <- max(proftAfterTax)
minimo <- min(proftAfterTax)
media <- mean(proftAfterTax)

meses <- rep(0,12)

i<- 1
while(i<13){
  
  if(proftAfterTax[i] > media){
    meses[i] <- 1
    if(proftAfterTax[i]==maximo){
      meses[i] <- 10
    }
    
  }
  else{
    if(proftAfterTax[i]<media){
      meses[i] <- -1
      if(proftAfterTax[i]==minimo){
        meses[i] <- -10
      }
    }
  }
  i <- i+1
}
i<- 1
#---------------result------------------

print('lucro:')
profit # --------------colocar no padrao


print('Profit After tax:')
proftAfterTax

print('Margem de lucro')
round(proftMarge*100,0)


#mostrando meses
while(i<13){
  print('------------------')
  if(meses[i] == 10){
    print('melhor mes:')
    print(i)
    print('Profit After tax:')
    print(proftAfterTax[i])
  }
  if(meses[i] == 1){
    print('mes bom')
    print(i)
    print('Profit After tax:')
    print(proftAfterTax[i])
  }
  if(meses[i] == -1){
    print('mes ruim:')
    print(i)
    print('Profit After tax:')
    print(proftAfterTax[i])
  }
  if(meses[i] == -10){
    print('pior mes:')
    print(i)
    print('Profit After tax:')
    print(proftAfterTax[i])
  }
  if(meses[i] == 0){
    print('mes mediano')
    print(i)
    print('Profit After tax:')
    print(proftAfterTax[i])
  }
  i<- i+1
}
i <- 1


 