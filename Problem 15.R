nck <- function(n,k){
  factorial(n) / factorial(n-k) / factorial(k)
}

nck(40, 20)