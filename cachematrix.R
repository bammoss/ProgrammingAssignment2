## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ##makeCacheMatrix sets the value of the Matrix
	## x is assigned a matrix value
	##Then it gets the value of the matrix
	##Sets the inverse of the matrix
	##Gets the inverse of the matrix
	##A list is returned that has 4 functions
	m<-NULL
	set<-function(y){
		x<<-y
		m<<-NULL
	}
	get<-function() x
	setinverse<-function(){ 
		m<<-solve(x)
	}
	getinverse<-function()m
 	list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ##cacheSolve takes x as an input
	##x is the result of the above functions
	##This function returns the cached inverse
	##If the inverse is not cached, then it is calculated
	##Then it is returned
	m<-x$getinverse()
	if(!is.null(m)){
		message("getting cached data")
		return(m)
	}
	amatrix<-x$get()
	m<-solve(amatrix)
	x$setinverse(m)
}
