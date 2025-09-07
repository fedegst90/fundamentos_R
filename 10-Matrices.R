
# FUNCIONES BASICAS CON MATRICES
# matrix(), rbind(), cbind() + nombres de filas y columnas

      #1. matrix() 

# La funcion matrix() crea una matriz (estructura 2D).
# Argumentos principales:
# - data: vector con los datos a organizar
# - nrow: numero de filas
# - ncol: numero de columnas
# - byrow: TRUE para llenar por filas, FALSE para columnas (por defecto)
# - dimnames: lista con nombres de filas y columnas (opcional)

# Crear vectores con nombres personalizados
nombres_filas <- c("Fila1", "Fila2")
nombres_columnas <- c("Col1", "Col2", "Col3")

# Crear matriz 2x3 con nombres
matriz_ejemplo <- matrix(
  data = 1:6,
  nrow = 2,
  ncol = 3,
  byrow = TRUE,
  dimnames = list(nombres_filas, nombres_columnas)
)

# Mostrar matriz original
print("Matriz creada con matrix() y dimnames:")
print(matriz_ejemplo)

        #2. rbind() 

# La funcion rbind() agrega filas a una matriz (debe tener mismas columnas)

# Crear una nueva fila compatible
nueva_fila <- c(7, 8, 9)

# Agregar la fila a la matriz
matriz_con_fila <- rbind(matriz_ejemplo, nueva_fila)

# Asignar nombre a la nueva fila usando rownames()
rownames(matriz_con_fila)[3] <- "Fila3"

# Mostrar resultado
print("Matriz después de rbind() (agregar fila):")
print(matriz_con_fila)


          #3. cbind() 

# La funcion cbind() agrega columnas a una matriz (debe tener mismas filas)

# Crear una nueva columna compatible
nueva_columna <- c(10, 11)

# Agregar la columna
matriz_con_columna <- cbind(matriz_ejemplo, nueva_columna)

# Asignar nombre a la nueva columna usando colnames()
colnames(matriz_con_columna)[4] <- "Col4"

# Mostrar resultado
print("Matriz después de cbind() (agregar columna):")
print(matriz_con_columna)


        # 4. Tambien podés modificar nombres después de rbind/cbind 

# rownames() y colnames() se pueden usar para agregar o modificar nombres en cualquier momento

# Por ejemplo: cambiar todos los nombres de filas y columnas de una matriz
rownames(matriz_con_columna) <- c("R1", "R2")
colnames(matriz_con_columna) <- c("A", "B", "C", "D")
#eliminar nombres colnames <- NULL

# Mostrar resultado final
print("Matriz con nombres modificados con rownames() y colnames():")
print(matriz_con_columna)


# Para acceder a los calores de una matris m<-[columna, fila], m<-[columna, ] toda la columna,
# m<-[, fila] toda la fila 
