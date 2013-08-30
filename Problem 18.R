input <- scan("Problem 18 Input.txt")
levels = 15
tbl <- matrix(rep(0, 15*15), nrow=15)
for(i in 1:levels){
  tbl[i, 1:i] <- input[((i-1) * (i) / 2 + 1):(i * (i + 1) / 2)]
}

for(i in (levels-1):1) {
  for(j in 1:i){
    tbl[i,j] = tbl[i, j] + max(tbl[i+1, j], tbl[i+1, j+1] )
  }
}

print(tbl)