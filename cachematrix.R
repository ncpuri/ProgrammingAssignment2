## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
set <- function(Y){
	X <<- Y
	inverse <<- NULL
	}
get <- function() X
setinverse <- function(Inverse) inverse <<- Inverse
getinverse <- function() inverse
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
if(require("corpcor")){
	} else {
		install.packages("corpcor")
			}
			inverse <- X$getinverse()
			if(!is.null(inverse)){
				message("Inverse matrix is already in memory")
				return(inverse)
				}
				message("Inverse matrix is not in memory")
				data <- X$get()
				inverse <- pseudoinverse(data, ...)
				X$setinverse(inverse)
				inverse
			}
