## In this script there are two functions.
##      1. makeCacheMatrix()
##      2. cacheSolve()
## Written by Joshua Burkhow 4/27/2014
##
## makeCacheMatrix is a function that either takes in a matrix class variable and "sets" it or returns a matrix value
## that was previously set. 

makeCacheMatrix <- function(x = matrix()) {
    
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() {
        x
    }
    setMatrix <- function(matrix) {
        m <<- matrix
    }
    getMatrix <- function() {
        m
    }
        
    list(set = set, get = get, setMatrix = setMatrix, getMatrix = getMatrix)
    
}


## cacheSolve takes in a value that was previously set using the makeCacheMatrix function. It then checks to see if
## it had cached the answer before and if not it then returns the inverse of the matrix.

cacheSolve <- function(x, ...) {
    
    m <- x$getMatrix()
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data)
    x$setMatrix(m)
    m
    
}