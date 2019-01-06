## Create a matrix object that caches its inverse

## makeCacheMatrix is a function creates a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  inver <- Null
  set <- function(y){
    x <<- y
    inver <<- Null
  }
  get <- function()x
  setinverse <- function(inverse) inver <<- inverse
  getinverse <- function() inver
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}



## cacheSolve computes the inverse of the matrix that results from the function above, 
## if the inverse has already been caculated then the function will retrieve the inverse form the cahce

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inver <- x$getinverse()
  if(!is.null(inver)){
    message('getting cached data')
    return(inv)
  }
  data <- x$get()
  inver <- solve(data,...)
  x$setinverse(inver)
  inver
}
