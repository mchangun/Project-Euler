# Perfect Number: Sum of proper divisors = Number
# Abundant Number: Sum of proper divisors > Number
# Deficient Number: Sum of proper divisors < Number

# 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, 
# Therefore smallest number that can be written as the sum of two abundant numbers is 24. 
# By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. 
# However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

library(R.utils)

isSquare = function(x){
  return(floor(sqrt(x)) ^ 2 - x == 0)
}


# fermatFactor = function(N){
#   fac = vector()
#   for(x in ceiling(sqrt(N)):N){
#     y2 = x^2 - N
#     if(isSquare(y2)){
#       y = sqrt(y2)
#       s = x - y
#       t = x + y
#       fac = c(fac, s, t)
#     }
#   }
  
propDiv = function(N){
  fac = vector()
  
  if(N == 1) return(1)
  else if (N == 2) return(1)
  else if (N == 3) return(1)
  else{
    for(i in 2:floor(sqrt(N))){
      if(N %% i == 0) fac = c(fac, i, N / i)
    }     
  }
  return(unique(sort(c(1,fac))))
}

sumpropdiv = sapply(1:28123, function(x) sum(propDiv(x)))
abund = which(sumpropdiv > 1:28123)
sumabund = rowSums(expand.grid(abund, abund))
sumabund = unique(sumabund)
sumabund = sumabund[sumabund<28123]
sum((1:28122)[!(1:28122 %in% sumabund)])