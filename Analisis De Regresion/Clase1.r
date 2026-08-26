#####################################
#Ejemplo de gastos de mantenimiento
#####################################

#-------------Datos------------------
# Primero se deben importar los datos
# Una vez importados los datos, los podemos
# trabajar como sigue

library(readxl)
Datos_gastos_mantenimiento=read_excel("C:/9no Semestre/Analisis De Regresion/Datos_gastos_mantenimiento.xlsx")

# Puedes "llamar" los datos como sigue
# (Nombre del archivo en excel)
Datos_gastos_mantenimiento

# Puedes llamar los datos de una sola variable
# como sigue:
# "Valor de la casa (en miles de dólares)"
Datos_gastos_mantenimiento$`Valor de la casa (en miles de dólares)`

# "Gastos de mantenimiento (en dólares)"
Datos_gastos_mantenimiento$`Gastos de mantenimiento (en dólares)`

# Para no escribir una línea larga cuando 
# llamas una variable puedes renombrarla:
x=Datos_gastos_mantenimiento$`Valor de la casa (en miles de dólares)`
y=Datos_gastos_mantenimiento$`Gastos de mantenimiento (en dólares)`

x
y

# Puedes obtener un resumen estadístico de 
# las variables usando la función summary
summary(x)
summary(y)

#O se puede agrupar la información en una tabla
datos=data.frame(x,y)
summary(datos)

     #-------------------------------------------------------------------------------
######## Gráfica de dispersión
#-----------
# Se abre un único PDF donde se irán guardando todas las gráficas (una por página)
pdf("C:/9no Semestre/Analisis De Regresion/graficas.pdf")

# Opción 1
plot(x,y)

# Opción 2
plot(y~x)

#Puede agregar título, etiquetas, cambiar de color y forma lo puntos
plot(x,y,main="Gráfica de dispersión", xlab="Valor de la casa", ylab="Gastos de mantenimiento",col=5, pch=19)

#-------------------------------------------------------------------------------
######## Coeficiente de correlación
#-----------
# Opción 1
n=length(x)
r=(sum(x*y)-n*mean(x)*mean(y))/sqrt((sum(x^2)-n*mean(x)^2)*(sum(y^2)-n*mean(y)^2))
r

# Opción 2
cor(x,y)

#------------------------------------------------------------------------------
########## Estimación de parámetros beta1 y beta2
#-----------
# Opción 1
n=length(x)
xbarra=mean(x) 
ybarra=mean(y)

### Para obtener al estimador beta 1 hay dos opciones

beta1=(sum(x*y)-n*xbarra*ybarra)/(sum(x^2)-n*xbarra^2)
beta1

beta1=sum((x-xbarra)*(y-ybarra))/sum((x-xbarra)^2)
beta1

### Estimador beta 0

beta0=ybarra-beta1*xbarra
beta0

#-----------
# Opción 2
ajuste=lm(y~x) 
ajuste

#-----------

### Para poder observar la linea ajustada
plot(x,y)
abline(ajuste)

#-----------
# Residuales
# Datos y originales
y

# Datos y estimados
# Opción 1
yest=beta0+beta1*x
yest

# Opción 2
ajuste$fitted.values
yest=ajuste$fitted.values

# Residuales
error=y-yest
error

#La suma de los residuales debe ser 0
sum(error)

#-------------------------------------------------------------------------------
#Para realizar los diferentes análisis

summary(ajuste)
anova(ajuste)

#Análisis de residuales
mean(ajuste$residuals)

plot(ajuste$residuals~ajuste$fitted.values)
abline(h=0, col="red")

qqnorm(ajuste$residuals)

# Se cierra el PDF: a partir de aquí ya no se guarda nada más en él
dev.off()

shapiro.test(ajuste$residuals)


#Pronóstico
ajuste$coefficients[1]+ajuste$coefficients[2]*270