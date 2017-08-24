## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    invX <- NULL
    
    get <- function() x
    setinvX <- function(inverse) invX <<- inverse
    getinvX <- function() invX
    list(get=get, setinvX=setinvX, getinvX=getinvX)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    invX <- x$getinvX()
    if(!is.null(invX)){
        message("getting cached inverse of matrix")
        return(invX)
    }
    X <- x$get()
    invX <- solve(X)
    x$setinvX(invX)
    invX
}

maty<-matrix(1:4, nrow = 2, ncol = 2)





