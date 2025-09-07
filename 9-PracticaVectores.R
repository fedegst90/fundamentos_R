# Datos
ingresos <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 
              11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)

gastos <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 
            3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

# Cantidad de ingresos y gastos
cantidad_ingresos <- length(ingresos)
cantidad_gastos <- length(gastos)

# Utilidad por mes
utilidad <- ingresos - gastos
utilidad

# Impuesto (30% de la utilidad)
utilidad_impuesto <- round(utilidad * 0.3, 2)
utilidad_impuesto

# Utilidad después de impuestos
utilidad_despues_impuestos <- utilidad - utilidad_impuesto
utilidad_despues_impuestos

# Margen de utilidad (como porcentaje)
margen_utilidad <- round((utilidad_despues_impuestos / ingresos), 2) * 100
margen_utilidad

# Promedio anual de utilidad con impuestos
promedio_udi <- mean(utilidad_impuesto)
promedio_udi

# Meses por encima de la media de impuesto
meses_arriba_media <- utilidad_despues_impuestos > promedio_udi
meses_arriba_media

# Meses por debajo de la media de impuesto
meses_debajo_media <- !utilidad_despues_impuestos
meses_debajo_media

#Mejor mes
mejor_mes <- utilidad_despues_impuestos == max(utilidad_despues_impuestos)
mejor_mes

#Menor mes
menor_mes <- utilidad_despues_impuestos == min(utilidad_despues_impuestos)
menor_mes

#Dejar todo en unidades de 1000
ingresos_1000 <- round(ingresos/1000)
gastos_1000 <- round(gastos/1000)
utilidad_1000 <- round(utilidad/1000)
udi_1000 <- round(utilidad_despues_impuestos/1000)


#Resultados
ingresos_1000
gastos_1000
utilidad_1000
udi_1000
margen_utilidad
meses_arriba_media
meses_debajo_media
mejor_mes
menor_mes

# Crear matriz 
matriz_resultados <- rbind(
  ingresos_1000,
  gastos_1000,
  utilidad_1000,
  udi_1000,
  margen_utilidad,
  meses_arriba_media,
  meses_debajo_media,
  mejor_mes,
  menor_mes
)
matriz_resultados


