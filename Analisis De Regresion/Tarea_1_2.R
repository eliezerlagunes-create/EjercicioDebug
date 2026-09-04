library(readxl)
Safety=read_excel("C:/9no Semestre/Analisis De Regresion/Safety.xlsx")
Safety

# Los nombres de las columnas del archivo traen un salto de línea,
# por eso se renombran antes de llamarlas con $
names(Safety)=c("Menores21","Accidentes")

# x = porcentaje de licencias de conductores menores de 21 años
# y = accidentes fatales por cada 1000 licencias
x=Safety$Menores21
y=Safety$Accidentes

x
y

# Resumen estadístico de las variables
datos=data.frame(x,y)
summary(datos)

n=length(x)
n

#-------------------------------------------------------------------------------
######## Gráfica de dispersión
#-----------
# Se abre un único PDF donde se irán guardando todas las gráficas (una por página)
pdf("C:/9no Semestre/Analisis De Regresion/graficas_tarea1_2.pdf")

plot(x,y,main="Gráfica de dispersión", xlab="Porcentaje de conductores menores de 21 años", ylab="Accidentes fatales por cada 1000 licencias")

#-------------------------------------------------------------------------------
######## Coeficiente de correlación
#-----------
# Opción 1
r=(sum(x*y)-n*mean(x)*mean(y))/sqrt((sum(x^2)-n*mean(x)^2)*(sum(y^2)-n*mean(y)^2))
r

# Opción 2
cor(x,y)

#------------------------------------------------------------------------------
########## Estimación de parámetros beta0 y beta1
#-----------
# Opción 1
xbarra=mean(x)
ybarra=mean(y)

beta1=sum((x-xbarra)*(y-ybarra))/sum((x-xbarra)^2)
beta1

beta0=ybarra-beta1*xbarra
beta0

#-----------
# Opción 2
ajuste=lm(y~x)
ajuste

#-----------

### Para poder observar la linea ajustada
plot(x,y,main="Recta de regresión estimada", xlab="Porcentaje de conductores menores de 21 años", ylab="Accidentes fatales por cada 1000 licencias")
abline(ajuste)

#-----------
# Residuales
# Datos y estimados
yest=ajuste$fitted.values
yest

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

# Varianza constante
plot(ajuste$residuals~ajuste$fitted.values)
abline(h=0, col="red")

# Independencia
plot(ajuste$residuals)
abline(h=0, col="red")

# Normalidad
qqnorm(ajuste$residuals)

# Se cierra el PDF: a partir de aquí ya no se guarda nada más en él
dev.off()

shapiro.test(ajuste$residuals)

#Pronóstico
xp=18
ajuste$coefficients[1]+ajuste$coefficients[2]*xp

