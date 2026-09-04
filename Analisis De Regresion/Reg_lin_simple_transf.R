############# Ejemplo datos golf
library(readxl)
Datos_golf <- read_excel("C:/9no Semestre/Analisis De Regresion/Datos_golf.xlsx")
Datos_golf

x=Datos_golf$Calificación
y=Datos_golf$Ganancias

#### Gráfica de dispersión
plot(x,y)
cor(x,y)

#### Regresión lineal simple
ajuste=lm(y~x)
ajuste

plot(x,y)
abline(ajuste)

summary(ajuste)
anova(ajuste)

#Análisis de residuales
mean(ajuste$residuals)
plot(ajuste$residuals~ajuste$fitted.values)
abline(h=0, col="red")
qqnorm(ajuste$residuals)
shapiro.test(ajuste$residuals)

#Pronóstico
xp=70
ajuste$coefficients[1]+ajuste$coefficients[2]*xp

#### Transformación de la variable "y" calculando la raíz cuadrada de los datos
y1<-sqrt(y)
y1
plot(x,y1)
cor(x,y1)

ajuste<-lm(y1~x)      
ajuste

plot(x,y1)
abline(ajuste)

summary(ajuste)
anova(ajuste)

#Análisis de residuales
mean(ajuste$residuals)
plot(ajuste$residuals~ajuste$fitted.values)
abline(h=0, col="red")
qqnorm(ajuste$residuals)
shapiro.test(ajuste$residuals)

#Pronóstico
xp=70
ajuste$coefficients[1]+ajuste$coefficients[2]*xp

(ajuste$coefficients[1]+ajuste$coefficients[2]*xp)^2

#### Transformación de la variable "y" calculando logaritmos a los datos
y2<-log(y)
y2

plot(x,y2)
cor(x,y2)

ajuste<-lm(y2~x)
ajuste

plot(x,y2)
abline(ajuste)

summary(ajuste)
anova(ajuste)

mean(ajuste$residuals)
plot(ajuste$residuals~ajuste$fitted.values)
abline(h=0, col="red")
qqnorm(ajuste$residuals)
shapiro.test(ajuste$residuals)

#Pronóstico
xp=70
ajuste$coefficients[1]+ajuste$coefficients[2]*xp

exp(ajuste$coefficients[1]+ajuste$coefficients[2]*xp)

