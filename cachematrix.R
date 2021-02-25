## Put comments here that give an overall description of what your
## functions do

#The function creates a matrix so can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL #initialised object
  set <- function(y) {
    x<<-y #assign argument y in environment
    m<<- NULL #assign NULL in parent environment
  }
  get <- function() x #takes x from parrent environment
  setInverse<-function(inverse) m <<- inverse #define setter for inverse function
  getInverse<-function() m #define getter for inverse
  list(set=set, get=get,
       setInverse=setInverse,
       getInverse=getInverse)
}


# The function below calculate the inverse of the matrix from function above. 

cacheSolve <- function(x, ...) {
  m<-x$getInverse() #get inverse matrix from the object
  if(!is.null(m)){ 
    message("getting cached data") #check for empty result, when it is not NULL, cache inverse can return it from the environment
    return(j) #return the result from cache environment
  }
  matr <- x$get() #when resuts is false, get matrix from the input
  m <-solve(matr,...) #calculate inverse of the input
  x$setInverse(m) # set the inverse result
  m #print result
  }
      

