?## Stores matrix and inverse in memory in order to improve runtimes

## stores the new matrix and clears the cache

makeCacheMatrix <- function(x = matrix()) {
   cachedMatrix <<- x       #store new matrix
   cachedSolved <<- NA      #if you change the matrix, should clear cached results
}


## Returns the solved matrix after computing if necessary

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   if(!is.na(cachedMatrix)) {
      if(!is.na(cachedSolved)) {
         return(cachedSolved)     #EFFICENCY GAINS
      } else {
         cachedSolved<<-solve(x,...)   #make sure to pass through arguments
         return(cachedSolved)
      }
   }
   
}
