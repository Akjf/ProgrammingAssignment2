## They takes a matrix sove it for inverse and caches it


## This fuction takes up a matrix and caches it, it also takes the inverse of the matrix and caches it

makeCacheMatrix <- function(x = matrix()) {m <- NULL
                                           set <- function(y) {
                                               x <<- y
                                               m <<- NULL
                                           }
                                           get <- function() x
                                           setinverse <- function(solve) m <<- solve
                                           getinverse <- function() m
                                           list(set = set, get = get,
                                                setinverse = setinverse,
                                                getinverse = getinverse)

}


## This function calculates the inverse of matrix from above function,before solving inverse it looks up for the cached value

cacheSolve <- function(x, ...) { m <- x$getinverse()
                                 if(!is.null(m)) {
                                     message("getting cached data")
                                     return(m)
                                 }
                                 data <- x$get()
                                 m <- solve(data, ...)
                                 x$setinverse(m)
                                 m
        ## Return a matrix that is the inverse of 'x'
}
