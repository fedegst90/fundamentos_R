#vector
vector <- c(5,9,48,231)
vector
is.numeric(vector)
is.integer(vector)
is.double(vector)

vector1 <- c(5L,9L,48L,231L)
is.numeric(vector1)
is.integer(vector1)
is.double(vector1)

vector2 <- c("a","b","asdas")
is.numeric(vector2)
is.character(vector2)

#no se puede combinar tipos de datos en un vector
vector2 <- c("a","b","asdas",6)

#secuencia
seq(1,15,2)
seq(1:15)
z <- seq(1,15,2)
z
#replicar 
r <- rep(4,10)
r

r1 <- rep(z,4)
r1

#elementos de un vector
w <-c("a","b","c","d","e")
w
w[1]
w[2]
w[3]
w[-1] #elimina la posicion indicada
m <- w[-3]
m

w[1:5] #accede a varias posiciones

w[c(1,3,5)]
w[c(-2,-4)]
