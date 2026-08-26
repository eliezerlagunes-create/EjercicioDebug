######
#Ciclo de 1000 iteraciones
df <-data.frame(Semillas=1:1000)
semilla_cm <-5732
for (i in 1:1000) {
    cuadrado <- (semilla_cm^2)
    texto <-sprintf("%08d",cuadrado)
    num <- as.numeric(substr(texto,3,6))
    u <- num/10000
    cat("Iteracion:", i, "Cuadrado:", cuadrado, "| Siguiente semila: ", num, "| U:", u, "\n")

    df[i, ] <-num
    semilla_cm <- num
}

cat("Metodo 2:Generador Congruencia Lineal - LLG")

m_lcg <-16   #Modulo
a_lcg <- 5   #Multiplicador
c_lcg <- 3   #Incremento
X0_lcg <- 7  #Semilla inicial

cat("Parametros: m:", m_lcg, "a:", a_lcg, "c:", c_lcg, "X0:", X0_lcg, "\n")

#Iteracion 1
X1_lcg <- (a_lcg * X0_lcg + c_lcg) %% m_lcg #Formula congruencial
U1_lcg <- X1_lcg/m_lcg                      #Normalizacion
cat("Iteracion 1: X1 =", X1_lcg, "U1 =", U1_lcg, "\n")  

#Iteracion 2
X2_lcg <- (a_lcg * X1_lcg + c_lcg) %% m_lcg #Formula congruencial
U2_lcg <- X2_lcg/m_lcg                      #Normalizacion
cat("Iteracion 2: X2 =", X2_lcg, "U2 =", U2_lcg, "\n")

#Iteracion 3
X3_lcg <- (a_lcg * X2_lcg + c_lcg) %% m_lcg #Formula congruencial
U3_lcg <- X3_lcg/m_lcg                      #Normalizacion
cat("Iteracion 3: X3 =", X3_lcg, "U3 =", U3_lcg, "\n")

X_lcg <- X0_lcg   # <-- inicializa con la semilla antes del ciclo
for (i in 1:3) {
  X_lcg <- (a_lcg * X_lcg + c_lcg) %% m_lcg  #Formula congruencial
  U_lcg <- X_lcg / m_lcg                     #Normalizacion
  cat("Iteracion", i, ": X =", X_lcg, "U =", U_lcg, "\n")
}

cat("Aplicacion Actuarial: Simulacion de Severidad de Reclamo")

lambda <- .001
reclamo_simulado <- -log(1- U1_mcg)/lambda

cat("Valor U(0,1) generado por MCG:", round(U1_mcg, 4), "\n")
cat("Monto de severidad de reclamo simulado:", round(reclamo_simulado, 2), "USD\n")