# ===========================FUNCTIONS===========================

# Convert an integer between to a word format
toWords <- function(x){
  if(x <= 999) return(tableWords[x +1])
  if(x >= 1000 && x <= 999999) return(paste(tableWords[floor(x / 1000) + 1], "thousand", 
                                            tableWords[(x %% 1000) + 1], 
                                            sep = ""))
  if(x >= 1000000) return(paste(tableWords[floor(x / 1000000) + 1], "million", 
                                toWords(x %% 1000000),
                                sep = ""))
}

# Create words for numbers from 0:999
genTableWords <- function()
{
  tableWords <- rep(NA, 1000)
  tableWords[1:21] <- c("", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve",
                        "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty")
  tableWords[seq(31, 91, 10)] <- c("thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety")
  
  for(i in 22:length(tableWords)){
    if(i <= 100) tableWords[i] <- paste(tableWords[floor((i-1) / 10) * 10 + 1], 
                                        tableWords[(i-1) %% 10 + 1], 
                                        sep = "")
    if(i >= 101) tableWords[i] <- paste(tableWords[floor((i-1) / 100) + 1], ifelse((i-1) %% 100 == 0, "hundred", "hundredand"), 
                                        tableWords[(i-1) %% 100 + 1], 
                                        sep = "")
  }
  return(tableWords)
}

tableWords = genTableWords()
nchar(toWords(342))
nchar(toWords(115))

sum(nchar(sapply(100:999, toWords)))