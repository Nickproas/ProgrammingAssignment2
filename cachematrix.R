## Hi my name is Nick, hope my code makes sense.


## The function below makes the special matrix
## code is based on the example from the exercise

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## The function below check if there's already an inverse of the 
## matrix in the cache and (if not) 
## then makes the inverse of the matrix.

cacheSolve <- function(x, ...) {

  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  matrix <- x$get()
  inv <- solve(matrix)
  x$setInverse(inv)
  inv
}
