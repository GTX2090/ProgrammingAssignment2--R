## Caching the Inverse of a Matrix

## this function creates the cache of a matrix

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y){
		x <<- y
		m <<- NULL
	}
	get <- function() x	
	inver <- function(inverse){
		m <<- inverse
	}
	getinver <- function() m
	list(set = set, get = get,inver = inver, getinver = getinver)
}


## this function solve the inverse matrix

cacheSolve <- function(x, ...) {
	m <- x$getinver()
	if(!is.null(m)){
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	m <- solve(data,...)
	x$inver(m)
	m
      ## Return a matrix that is the inverse of 'x'
}
