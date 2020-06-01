## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function as the one from the example create a list where it stores 
## a matrix and call its, also keeps its value and a dummy variable.
makeCacheMatrix <- function(x = matrix()) {
  cm<-NULL
  set<-function(y){
    x<<-y
    cm<<-NULL
  }
  get<-function() x
  setinverse<<-function(cmean) cm<<-cmean
  getinverse<- function() cm
  list(set = set, get = get,  setinverse = setinverse,  getinverse = getinverse)
}


## call the library matlib, it check if the inverse has been already calculated 
## if it hasn't, is calculated.

cacheSolve <- function(x, ...) {
  library(matlib)
  cm <- x$getinverse()
  if(!is.null(cm)) {
    message("getting cached data")
    return(cm)
  }
  data <- x$get()
  cm <- mean(data, ...)
  x$setinverse(cm)
  cm
        ## Return a matrix that is the inverse of 'x'
}
