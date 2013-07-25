grid = read.table("Problem 11 Input.txt", sep = " ")
prods = vector()


# first loop is the row number, second loop is the column number

# horizontal groups
for(i in 1:20){
  for(j in 1:17){
    prods = c(prods, prod(grid[i,j:(j+3)]))
  }
}

# vertical groups
for(i in 1:17){
  for(j in 1:20){
    prods = c(prods, prod(grid[i:(i+3),j]))
  }
}

# diagonal to right groups
for(i in 1:17){
  for(j in 1:17){
    prods = c(prods, 
              prod(grid[i,j], grid[i+1,j+1], grid[i+2,j+2], grid[i+3,j+3]))
  }
}

# diagonal to left groups
for(i in 4:20){
  for(j in 1:17){
    prods = c(prods, 
              prod(grid[i,j], grid[i-1,j+1], grid[i-2,j+2], grid[i-3,j+3]))
  }
}
print(max(prods))