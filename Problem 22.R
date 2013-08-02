library(stringr)
library(sfsmisc)

names = readLines("problem 22 input.txt")
names = sort(unlist(str_extract_all(names, "[A-Z]+")))

namesdf = data.frame(rank = 1:length(names), names = sort(names))

scores = sapply(1:length(names), function(x) {
  sum(AsciiToInt(names[x]) - 64) * x
})

print(sum(scores))

# Checkout Amelia
# Read stringr source code