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

print(max(prime_factors(600851475143)))