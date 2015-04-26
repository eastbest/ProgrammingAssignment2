## Put comments here that give an overall description of what your
## functions do

## This code is to for lexical scoping and caching functions 
## that may require a long computation time. 

## Write a short comment describing this function

## Use solve() to find the inverse of a matrix 

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)  
}


## Write a short comment describing this function
## Cache the inverse of a matrix using a free floating variable
cacheSolve <- function(x, ...) {

  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
