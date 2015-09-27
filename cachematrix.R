## Put comments here that give an overall description of what your
## functions do


## In computing theory, there is a common theme of tradeoff between storage
## space and running time (space-time tradeoff). The functions makeCacheMatrix
## and cacheSolve make the sacrifice of using memory storage to speed up
## computation time of specific types of scripts.
##
## This method is preferred when there exist a costly computation step that is
## performed often. In this case, the costly computation step is the calculation
## of the inverse of a large-sized matrix (say 1 million rows by 1 million
## columns).
##
## makeCacheMatrix creates an environment that stores both the matrix object and
## its inverse through set and get functions. cacheSolve is the interface
## for this environment that only calculates the inverse matrix if it had not
## been calculated, then return the inverse matrix. Using this system, we avoid
## performing repeat calculations.


## Write a short comment describing this function

## makeCacheMatrix is a list of four functions: set/get for the matrix object,
## and set/get for the inverse of the matrix object. The matrix that you pass
## into the function is stored in the environment makeCacheMatrix sets up rather
## than the environment where this function is called, and similarly for the
## inverse matrix.
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        
        # This line is here to remove "old" inverse matrices when you give your
        # makeCacheMatrix() object a new matrix value.
        inv <<- NULL
    }
    
    get <- function() x
    
    setInv <- function(inverse) inv <<- inverse
    
    getInv <- function() inv
    
    list(set=set, get=get, setInv=setInv, getInv=getInv)
}


## Write a short comment describing this function

## cacheSolve interfaces with makeCacheMatrix to calculate the matrix inverse
## if it had not been performed, else return the inverse matrix. x should be
## a makeCacheMatrix() object.
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getInv()
    
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    
    data <- x$get()
    inv <- solve(data, ...)
    x$setInv(inv)
    inv
}
