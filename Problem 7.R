is_prime <- function(x){
  if(x == 2 | x == 3) return(TRUE)
  
  div <- 2:floor(sqrt(x))
  !any(x %% div == 0)
}

primes = 2
pp = 3
n = 2

while(n <= 10001){
  if(is_prime(pp)){
    primes = c(primes, pp)
    n = n + 1
  }
  pp = pp + 2
}

tail(primes, 1)