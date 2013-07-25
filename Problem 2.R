fibseq = c(1,2)
x = 0
while(sum(tail(fibseq, 2)) < 4e6){
  x = sum(tail(fibseq, 2))
  fibseq = c(fibseq, x)
}

print(sum(fibseq[fibseq %% 2 == 0]))