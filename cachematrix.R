## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix is a function which creates a special "matrix" object that can
cache its inverse for the input (which is an invertible square matrix)

makeCacheMatrix <- function(x = matrix()) {
     inv <- NULL
     set <- function(y)  
         x <<- y
         inv <<- NULL

}
get <- function() x
setinv <- function(solveMatrix) inv <<- solveMatrix
getInverse <- function() inv
 list(set = set, get = get
      setInverse = setInverse, 
      getInverse = getInverse)
}
##This function computes the inverse of the special "matrix" returned by `makeCacheMatrix` above. If the inverse has been
calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
         if(!is.null(inv)){
              message("getting cached data")
              return(inv)
          } 
          data <- x$get()
          inv <- solve(data)
          x$setInverse(inv)
          inv
        }
        
