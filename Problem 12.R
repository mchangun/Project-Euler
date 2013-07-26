#n = nth triangle number 
trinum <- function(n){
  sum(as.numeric(1:n))
}

prime_factors <- function(n){
  factors = vector()
  
  d = 2
  while(n != 1){
    while(n %% d == 0){
      factors = c(factors, d)
      n = n / d      
    }
    d = d + 1
  }
  return(factors)
}

numfactors <- function(x){
  prod(table(prime_factors(x)) + 1)
}

i = 1
while(numfactors(trinum(i)) < 500){
  i = i + 1
}
print(trinum(i))
