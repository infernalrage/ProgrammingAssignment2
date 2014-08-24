## Put comments here that give an overall description of what your
## functions do

## Creates a matrix function to invert it and

makeCacheMatrix <- function(x = matrix()) {
	x <- NULL
	set <- function(y){
	x <<- y
	m <<- NULL
	}
	get <- function()x
	setinv <-function(inv) m <<- inv
	getinv <- function() m
	list(set = set, get = get,
		setinv = setinv,
		getinv = getinv)
}


## Checks the cache to see if invert has been calculated.
## If the inverse exists in the cache, skip the computation.
## If not, compute the inverse.

cacheSolve <- function(x, ...) {
     	m <- x$getinv()
	if(!is.null(m)) {
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	m <- solve(data, ...)
	x$setinv(m)
	m
}
