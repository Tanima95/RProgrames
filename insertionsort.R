insertionsort <- function(x){
  for(i in 2:(length(x))) {
    value <- x[i]
    j <- i - 1
    while(j >= 1 && x[j] > value) {
      x[j+1] <- x[j]
      j <- j-1
    }
    x[j+1] <- value
  }
  x
}