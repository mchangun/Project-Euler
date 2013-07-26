nextcollatz <- function(x){
#   if even
  if(x %% 2 == 0) return(x / 2)
  else return(3 * x + 1)
}

collatzlen <- function(x){
  n = 1
  x = nextcollatz(x)
  while(x != 1){
    n = n + 1
    x = nextcollatz(x)
  }
  return(n = n + 1)
}

maxlength = 0
maxinit = 1

for(init in 1:1e6){
  n = collatzlen(init)
  if(n > maxlength){
    maxlength = n
    maxinit = init
  }
}

print(maxinit)
