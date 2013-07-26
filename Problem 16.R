options(scipen = 999)
ans = as.character(2^15)
ans = substring(ans, 1:nchar(ans), 1:nchar(ans))
sum(as.numeric(ans))