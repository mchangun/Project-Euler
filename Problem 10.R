# Sieve of Eratosthenes

n = 2e6
tbl <- matrix(c(NA, 2:n, rep(1,n)), ncol=2)
tbl[1,2] = 0

for(i in 2:floor(sqrt(n))){
  if(tbl[i,2] == TRUE){
    tbl[i^2 + seq(0, n-i^2, i), 2] = 0
  }
}

primes = tbl[which(tbl[,2] == 1),1]
print(sum(primes))