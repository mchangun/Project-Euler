is_palindrome <- function(x){
  x = as.character(x)
  revx = paste(rev(substring(x,1:nchar(x),1:nchar(x))),collapse="")
  
  if(x == revx) return(TRUE)
  else return(FALSE)
}

prod = vector(length=810000)

i = 1
for (x in 100:999){
  for (y in 100:999){
    prod[i] = x * y
    i = i + 1
  }
}

prod = unique(sort(prod))
palindromes = sapply(prod, is_palindrome)
prod = prod[palindromes]
max(prod)
