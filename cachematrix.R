## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    if(!(exists('y'))){
        message("Caching Matrix")
    } else {
        message("Getting Cached Matrix")
    }
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    solve(x)
}