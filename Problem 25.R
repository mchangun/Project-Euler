library(gmp)
fib <- function(x, y) return(add.bigz(x, y))

x = as.bigz(1)
y = as.bigz(1)

i = 2
while(nchar(as.character(y)) < 1000){
  ans = fib(x,y)
  x = y
  y = ans
  i = i+1
}

print(i)
print(y)