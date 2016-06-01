
# Matrix inversion is a costly computation and there may be benefit 
# to caching the inverse of a matrix rather than compute it repeatedly. The
# following two functions are used to cashe the inverse of a matrix. 

# makeCacheMatrix is function defined to
# 1. set the value of the matrix.
# 2. get the value of the matrix.
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix 

makeCacheMatrix <- function(x = matrix(x = matrix)) {


        inv <- NULL
        set<- function(y) {
        x <<- y
        inv <<- NULL
      }
      get <- function() x
      setinverse <- function(inverse) inv<<- inverse
      getinverse <- function() inv
      list(set=set, get=get, setinverse = setinverse, getinverse = getinverse)
}

# cacheSolve is a function defined to 
# 1. return the inverse of a matrix 
# 2. checks if the inverse has already been computed
# 3. if yes, it returns the results
# 4. else computes the results using setinverse function.  




## Write a short comment describing this function


cacheSolve <- function(x, ...){

        inv <- x$getmatrix()
        if(!is.null(m)){
            message("getting cached data")
            return(inv)
         }
         data <- x$get()
         inv <- solve(data)
         x$setinverse(inv)
         inv
}
        
