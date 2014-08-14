## creating function that cache matrix if there is one

makeCacheMatrix <- function(mat = matrix()) {
  
  # create inverse property
  inv <- null
  
  # function starting the matrix
  set <- function(){
    
    mat <<- matrix()
    inv <<- null
    
    
    
  }
  
  ## function to retrieve the matrix
  
  get <- function() {
    mat
    
  }
  
  ## function to set inverse of the matrix
  matinv <- function(inverse){
    ## solve function for inverse
    inv <<- solve(m)
    
  }
  
  
  ## get the inverse of the matrix after it's set
  getinverse <- function() {
    
    inv
  }
  
  ## List of functions
  list(set = set, get = get, matinv = matinv, getinverse = getinverse)
  
  # function to check for inverse and retrieve inverse
  
  cachesolve <- function(x, ...){
    
    # inverse of x in matrix form
    m <- x$getinverse()
    
    # if already set no need to run again
    # and slow program
    
    if(!is.null(m)) {
      
      message("getting cached data")
      return(m)
    }
    
    ## retrieve matrix
    
    data <- x$get()
    
    ## retrieve inverse
    m <- solve(data)
    
    ## inverse to the m
    x$setInverse(m)
    
    # return the result
    m
  }
}
