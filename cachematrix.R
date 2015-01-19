## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This is created by Liang Xu
## test commit by Liang XU
## first you need to run the makeCacheMatrix() function to bulid a matrix space
## then you can use the cacheSolve() to store the Matrix inverse. 

## when you run this makeCacheMatrix(), the return is a list has 4 functions. 
## 1: set the value of the Matrix 
## 2: get the value of the Matrix
## 3: set the value of the Inverse Matrix.
## 4: get the Value of the Inverse Matrix.

makeCacheMatrix <- function(x = matrix()) {

    Inver_M <- NULL
    set <- function(y) {
        x <<- y
        Inver_M <<- NULL
    }
    get <- function() x
    set_inv_Matrix <- function(Inverse) Inver_M <<- Inverse
    get_inv_Matrix <- function() Inver_M
    list(set = set, get = get,
         set_inv_Matrix = set_inv_Matrix,
         get_inv_Matrix = get_inv_Matrix)
}


## Write a short comment describing this function
## first detect if the input.getinv_Matrix has value.
## if has, print "getting cached data" return the value
## save the matrix to data 
## get the data from x$get
## solve the data use solve(data)
## save the current Inverse to the x$set_inv_Matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    Inverse_Matrix <- x$get_inv_Matrix()
    if(!is.null(Inverse_Matrix)) {
        message("getting cached data")
        return(Inverse_Matrix)
    }
    data <- x$get()
    data
    Inverse_Matrix <- solve(data, ...)
    
    x$set_inv_Matrix(Inverse_Matrix)
    Inverse_Matrix
}
