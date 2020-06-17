## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    g <- NULL
    set <- function(y) {
      x <<- y
      g <<- NULL
    }
  get <- function()x 
  setinverse <- function(solve) 
  g <<- inverse
  getinverse <- function() g 
  list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)
}


## The function creates a matrix  in wich could be calculated the inverse and storage this inverse in a variable named g.  

cacheSolve <- function(x, ...) {

  g <- (x)
  m <- x$getinverse()
  if(!is.null(g)) {
    message("getting cached data")
    return(g)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(g)
  g
}

## The function check if the inverse of a matrix given it is storage in g. if is TRUE, returns the inverse matrix in g. If is FALSE
# calculate the  inverse matrix of the matrix given.  