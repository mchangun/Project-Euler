propdiv = function(x){
  ans = vector()
  for(i in 1:(x-1)){
    if(x %% i == 0) ans = c(ans, i)
  }
  
  return(ans)
}

sumpropdivs = sapply(2:10000, function(x) {
  sum(propdiv(x))
  })

m = matrix(sumpropdivs)
m = c(NA, m)

m = m[m <= 10000]

amipos = vector()
for(i in 1:nrow(m)){
  if(i == m[m[i]] && m[i] == m[i]) amipos = c(amipos,i)
}