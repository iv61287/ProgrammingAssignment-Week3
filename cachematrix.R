##cachematrix.R -> by IndraniV
##Week 3 assignment

## Write a short comment describing this function
## This function creates a special 'matrix' object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
	invMatrix <- NULL
	setMatrix <- function(y){
		x <- y
		invMatrix <- NULL
	}
	
	getMatrix <- function()x
	setInverse <- function(inverse) invMatrix <- inverse
	getInverse <- function() invMatrix
	list(setMatrix = setMatrix, getMatrix = getMatrix, 
	setInverse = setIinverse, getInverse = getInverse)
}

## Write a short comment describing this function
## This function computes the inverse of the special 'matro returned by makeCacheMatrix above
## If the inverse has already been calculated (and the matrix has not changed then cacheSolve will retrieve the inverse from the cache)

cacheSolve <- function(x, ...) {
	invMatrix <- x$getInverse()
	if(!is.null(inv)){
		message("getting cached data")
		return(invMatrix)
		}
	data <- x$get()
	invMatrix <- solve(data, ...)
	x$setInverse(invMatrix)
	invMatrix
}
