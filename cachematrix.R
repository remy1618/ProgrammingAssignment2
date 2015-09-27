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
## makeCacheMatrix is a data structure that stores both the matrix object and
## its inverse through set and get functions. cacheSolve is the interface
## function to makeCacheMatrix and serves two functions: to calculate the matrix
## inverse if it had not been calculated, or to return the inverse matrix if it
## had already been calculated.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
