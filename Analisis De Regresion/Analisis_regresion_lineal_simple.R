#####################################
#Análisis de regresión lineal simple
#####################################

#-------------Datos------------------
# Primero se deben importar los datos
# Una vez importados los datos, los podemos 
# trabajar como sigue

library(readxl)
Ejemplo_RLS=read_excel("C:/9no Semestre/Analisis De Regresion/Ejemplo_RLS.xlsx")

# Puedes "llamar" los datos como sigue 
# (Nombre del archivo en excel)

x= Ejemplo_RLS$`Población (en millones)`
y= Ejemplo_RLS$`Edad media`

x
y

#-------------------------------------------------------------------------------
######## Gráfica de dispersión
#-----------
# Se abre un único PDF donde se irán guardando todas las gráficas (una por página)
pdf("C:/9no Semestre/Analisis De Regresion/graficas_ejemplo_rls.pdf")

# Opción 1
plot(x,y)

# Opción 2
plot(y~x)

#-------------------------------------------------------------------------------
######## Coeficiente de correlación
#-----------
cor(x,y)

#------------------------------------------------------------------------------
########## Estimación de parámetros beta1 y beta2
#-----------
ajuste=lm(y~x) 
ajuste

### Para poder observar la linea ajustada
plot(x,y)
abline(ajuste)

# Datos y estimados
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
# anova(ajuste)

#Análisis de residuales
mean(ajuste$residuals)

plot(ajuste$residuals~ajuste$fitted.values)
abline(h=0, col="red")

qqnorm(ajuste$residuals)

# Se cierra el PDF: a partir de aquí ya no se guarda nada más en él
dev.off()

shapiro.test(ajuste$residuals)

#Pronóstico
xp= 4
ajuste$coefficients[1]+ajuste$coefficients[2]*xp

print("Hola mundo")
