## The function makeCacheMatrix returns a list of 3 elements. The first
## element is the matrix, the second element sets the inverse of the matrix, and
## the third is the inverse of the matrix. The function cacheSolve provides the
## inverse of matrix x.

## makeCacheMatrix is a three element list that get the matrix x, sets the inverse of x and gets the inverse
## of x

makeCacheMatrix <- function(x = matrix()) {
    invX <- NULL
    
    get <- function() x
    setinvX <- function(inverse) invX <<- inverse
    getinvX <- function() invX
    list(get=get, setinvX=setinvX, getinvX=getinvX)

}


## cacheSolve calculates the inverse of x or if the inverse is already calculated
## simply returns the value of the invers of x. 

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






