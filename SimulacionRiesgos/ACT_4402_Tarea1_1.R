rm(list = ls())

# ACT 4402 Simulación en seguros y finanzas
# TAREA #1

# ==============================================================================
# EJERCICIO 1: GENERADOR CONGRUENCIA LINEAL (LCG)
# ==============================================================================

cat(" EJERCICIO 1: GENERADOR CONGRUENCIA LINEAL - LCG \n\n")

m_lcg  <- 8
a_lcg  <- 5
c_lcg  <- 7
X0_lcg <- 2

cat("Parámetros: a =", a_lcg, ", c =", c_lcg, ", m =", m_lcg, ", Semilla X0 =", X0_lcg, "\n\n")

X1_lcg <- (a_lcg * X0_lcg + c_lcg) %% m_lcg
U1_lcg <- X1_lcg / m_lcg
cat("Iteración 1: X1 =", X1_lcg, "| U1 =", U1_lcg, "\n")

X2_lcg <- (a_lcg * X1_lcg + c_lcg) %% m_lcg
U2_lcg <- X2_lcg / m_lcg
cat("Iteración 2: X2 =", X2_lcg, "| U2 =", U2_lcg, "\n\n")


# ==============================================================================
# EJERCICIO 2: GENERADOR CONGRUENCIA MULTIPLICATIVO (MCG)
# ==============================================================================

cat(" EJERCICIO 2: GENERADOR CONGRUENCIA MULTIPLICATIVO - MCG \n\n")

m_mcg  <- 8
a_mcg  <- 5
c_mcg  <- 0
X0_mcg <- 2

cat("Parámetros: a =", a_mcg, ", c =", c_mcg, ", m =", m_mcg, ", Semilla X0 =", X0_mcg, "\n\n")

X1_mcg <- (a_mcg * X0_mcg) %% m_mcg
U1_mcg <- X1_mcg / m_mcg
cat("Iteración 1: X1 =", X1_mcg, "| U1 =", round(U1_mcg, 4), "\n")

X2_mcg <- (a_mcg * X1_mcg) %% m_mcg
U2_mcg <- X2_mcg / m_mcg
cat("Iteración 2: X2 =", X2_mcg, "| U2 =", round(U2_mcg, 4), "\n\n")


# ==============================================================================
# EJERCICIO 3: MÉTODO DE LA TRANSFORMADA INVERSA
# ==============================================================================

cat(" EJERCICIO 3: MÉTODO DE LA TRANSFORMADA INVERSA \n\n")

U1 <- 0.512

x_simulada <- U1^(1/3)

cat("Valor U(0,1) generado:", U1, "\n")
cat("Valor simulado de X:", round(x_simulada, 4), "\n\n")


# ==============================================================================
# EJERCICIO 4: MÉTODO DEL CUADRADO MEDIO
# ==============================================================================

cat(" EJERCICIO 4: MÉTODO DEL CUADRADO MEDIO \n\n")

semilla_cm <- 5152

cuadrado1 <- semilla_cm ^ 2
texto1 <- sprintf("%08d", cuadrado1)
num1 <- as.numeric(substr(texto1, 3, 6))
u1 <- num1 / 10000
cat("Iteración 1: Cuadrado =", cuadrado1, "| Siguiente semilla =", num1, "| U(0,1) =", u1, "\n")

cuadrado2 <- num1 ^ 2
texto2 <- sprintf("%08d", cuadrado2)
num2 <- as.numeric(substr(texto2, 3, 6))
u2 <- num2 / 10000
cat("Iteración 2: Cuadrado =", cuadrado2, "| Siguiente semilla =", num2, "| U(0,1) =", u2, "\n\n")
