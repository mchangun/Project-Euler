even_div <- function(x){
  for(d in 1:20){
    if(x %% d != 0) return(FALSE)
  }
  return(TRUE)
}

x = 10
while(!even_div(x)) x = x + 10

print(x)