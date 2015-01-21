## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##1. set the value of the matrix
##2. get the value of the matrix
##3. set the value of the inverse
##4. get the value of the inverse

makeCacheMatrix <- function(x = matrix()) 
  {
    m<-NULL
    set (function y) 
    {
  
      x<<-y
      m<<-NULL
    }
  get <- function() x
  setInverse <- function(inv) m <<- inv
  getInverse <- function() m
  list(set = set, get = get,     setInverse = setInverse,     getInverse = getInverse)

}


## Write a short comment describing this function

##The following function calculates the inverser of the special "matrix" created with the above function.
##However, it first checks to see if the inverse has already been calculated. 
##If so, it gets the inverse from the cache and skips the computation. Otherwise, 
##it calculates the inverse of the matrix and sets the value of the inverse in the cache via the setinverse function

##Below assumes matrix is always invertible
cacheSolve <- function(x, ...) {
        
  m <- x$getInverse()
  if(!is.null(m))
  {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setInverse(m)
  ## Return a matrix that is the inverse of 'x'
  m
  
  
 
}
