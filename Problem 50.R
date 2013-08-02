genPrimes <- function(n){
  tbl <- matrix(c(NA, 2:n, rep(1,n)), ncol=2)
  tbl[1,2] = 0
  
  for(i in 2:floor(sqrt(n))){
    if(tbl[i,2] == TRUE){
      tbl[i^2 + seq(0, n-i^2, i), 2] = 0
    }
  }
  
  return(tbl[which(tbl[,2] == 1),1])
}
  
is_prime <- function(x){
  if(x == 2 | x == 3) return(TRUE)
  
  div <- 2:floor(sqrt(x))
  !any(x %% div == 0)
}

primes = genPrimes(100000)

conseq_prime = 0
i = 1

while(sum(primes[1:i]) < 1000){
  if(is_prime(sum(primes[1:i]))){
    conseq_prime = sum(primes[1:i])
  }
  i = i + 1
  print(i)
}

print(conseq_prime)




