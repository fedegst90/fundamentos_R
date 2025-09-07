
# OPERACIONES CON MATRICES EN R

# Crear dos matrices de 2x3
mat1 <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, byrow = TRUE)
mat2 <- matrix(c(6, 5, 4, 3, 2, 1), nrow = 2, byrow = TRUE)

print("Matriz 1:")
print(mat1)

print("Matriz 2:")
print(mat2)


# 1. Suma de matrices


# Suma elemento a elemento entre dos matrices del mismo tamaño.
# Cada celda se suma con la celda en la misma posicion.
suma <- mat1 + mat2
print("Suma de matrices (mat1 + mat2):")
print(suma)


# 2. Resta de matrices


# Resta elemento a elemento entre dos matrices del mismo tamaño.
# Se resta el valor de la misma posicion en cada celda.
resta <- mat1 - mat2
print("Resta de matrices (mat1 - mat2):")
print(resta)


# 3. Multiplicacion por escalar (numero)


# Multiplicacion escalar: cada elemento se multiplica por el numero indicado.
# No cambia la estructura de la matriz.
escalar <- 2
multiplicacion_escalar <- mat1 * escalar
print("Multiplicacion por escalar (mat1 * 2):")
print(multiplicacion_escalar)


# 4. Multiplicacion matricial (dot product)


# Multiplicacion entre matrices: no es elemento a elemento.
# Se aplica el producto punto (dot product).
# La cantidad de columnas de la primera debe coincidir con la cantidad de filas de la segunda.
# Resultado: nueva matriz.

# mat1 es 2x3, entonces mat3 debe ser 3x2
mat3 <- matrix(1:6, nrow = 3, byrow = TRUE)

multiplicacion_matrices <- mat1 %*% mat3
print("Multiplicacion entre matrices (mat1 %*% mat3):")
print(multiplicacion_matrices)



# 5. Transpuesta de una matriz


# Cambia filas por columnas.
# Lo que era una fila se convierte en una columna.
transpuesta <- t(mat1)
print("Transpuesta de mat1:")
print(transpuesta)


# 6. Suma y promedio por filas y columnas


# rowSums: suma los elementos de cada fila
suma_filas <- rowSums(mat1)
print("Suma por filas de mat1:")
print(suma_filas)

# colSums: suma los elementos de cada columna
suma_columnas <- colSums(mat1)
print("Suma por columnas de mat1:")
print(suma_columnas)

# rowMeans: calcula el promedio de cada fila
promedio_filas <- rowMeans(mat1)
print("Promedio por filas de mat1:")
print(promedio_filas)

# colMeans: calcula el promedio de cada columna
promedio_columnas <- colMeans(mat1)
print("Promedio por columnas de mat1:")
print(promedio_columnas)



# 7. Comparaciones logicas


# Comparacion elemento a elemento.
# Devuelve TRUE o FALSE segun cada celda cumpla la condicion.
logico_mayor3 <- mat1 > 3
print("Comparacion logica (mat1 > 3):")
print(logico_mayor3)

# Comparacion entre dos matrices de igual dimension.
# Devuelve TRUE si los valores son iguales celda por celda.
logico_igual <- mat1 == mat2
print("Comparacion elemento a elemento (mat1 == mat2):")
print(logico_igual)
