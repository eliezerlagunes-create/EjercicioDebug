# ==============================================================================
# EJERCICIO 1: MÉTODO DEL CUADRADO MEDIO
# ==============================================================================

cat(" EJERCICIO 1: MÉTODO DEL CUADRADO MEDIO \n\n")

semilla_cm <- 54321   # 5 dígitos

# --- Iteración 1 ---
cuadrado1 <- semilla_cm ^ 2
texto1 <- sprintf("%010.0f", cuadrado1)
num1 <- as.numeric(substr(texto1, 3, 7))  
u1 <- num1 / 100000
cat("Iteración 1: Cuadrado =", cuadrado1, "| Siguiente semilla =", num1, "| U(0,1) =", u1, "\n")

# --- Iteración 2 ---
cuadrado2 <- num1 ^ 2
texto2 <- sprintf("%010.0f", cuadrado2)
num2 <- as.numeric(substr(texto2, 3, 7))
u2 <- num2 / 100000
cat("Iteración 2: Cuadrado =", cuadrado2, "| Siguiente semilla =", num2, "| U(0,1) =", u2, "\n\n")

# ==============================================================================
# EJERCICIO 2: GENERADOR CONGRUENCIA LINEAL (LCG)
# ==============================================================================

cat(" EJERCICIO 2: GENERADOR CONGRUENCIA LINEAL - LCG \n\n")

m_lcg  <- 13
a_lcg  <- 7
c_lcg  <- 5
X0_lcg <- 4

cat("Parámetros: a =", a_lcg, ", c =", c_lcg, ", m =", m_lcg, ", Semilla X0 =", X0_lcg, "\n\n")

X1_lcg <- (a_lcg * X0_lcg + c_lcg) %% m_lcg
U1_lcg <- X1_lcg / m_lcg
cat("Iteración 1: X1 =", X1_lcg, "| U1 =", U1_lcg, "\n")

X2_lcg <- (a_lcg * X1_lcg + c_lcg) %% m_lcg
U2_lcg <- X2_lcg / m_lcg
cat("Iteración 2: X2 =", X2_lcg, "| U2 =", U2_lcg, "\n\n")

# ==============================================================================
# EJERCICIO 3: MÉTODO DE LA TRANSFORMADA INVERSA (Distribución Exponencial)
# ==============================================================================

cat(" EJERCICIO 3: MÉTODO DE LA TRANSFORMADA INVERSA \n\n")

lambda <- 0.002   # parámetro de la exponencial
U1 <- 0.40

# F(x) = 1 - e^(-lambda*x)  =>  x = -ln(1 - U) / lambda
x_simulada <- -log(1 - U1) / lambda

cat("Parámetro lambda:", lambda, "\n")
cat("Valor U(0,1) generado:", U1, "\n")
cat("Valor simulado de X:", round(x_simulada, 4), "\n\n")

# ==============================================================================
# EJERCICIO 4: GENERADOR CONGRUENCIA MULTIPLICATIVO (MCG)
# ==============================================================================

cat(" EJERCICIO 4: GENERADOR CONGRUENCIA MULTIPLICATIVO - MCG \n\n")

m_mcg  <- 11
a_mcg  <- 7
c_mcg  <- 0
X0_mcg <- 3

cat("Parámetros: a =", a_mcg, ", c =", c_mcg, ", m =", m_mcg, ", Semilla X0 =", X0_mcg, "\n\n")

X1_mcg <- (a_mcg * X0_mcg) %% m_mcg
U1_mcg <- X1_mcg / m_mcg
cat("Iteración 1: X1 =", X1_mcg, "| U1 =", round(U1_mcg, 4), "\n")

X2_mcg <- (a_mcg * X1_mcg) %% m_mcg
U2_mcg <- X2_mcg / m_mcg
cat("Iteración 2: X2 =", X2_mcg, "| U2 =", round(U2_mcg, 4), "\n\n")

# ==============================================================================
# EJERCICIO 5: MÉTODO DEL CUADRADO MEDIO
# ==============================================================================

cat(" EJERCICIO 5: MÉTODO DEL CUADRADO MEDIO \n\n")

semilla_cm <- 3162

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

# ==============================================================================
# EJERCICIO 6: GENERADOR CONGRUENCIA LINEAL (LCG)
# ==============================================================================

cat(" EJERCICIO 6: GENERADOR CONGRUENCIA LINEAL - LCG \n\n")

m_lcg  <- 16
a_lcg  <- 9
c_lcg  <- 7
X0_lcg <- 3

cat("Parámetros: a =", a_lcg, ", c =", c_lcg, ", m =", m_lcg, ", Semilla X0 =", X0_lcg, "\n\n")

X1_lcg <- (a_lcg * X0_lcg + c_lcg) %% m_lcg
U1_lcg <- X1_lcg / m_lcg
cat("Iteración 1: X1 =", X1_lcg, "| U1 =", U1_lcg, "\n")

X2_lcg <- (a_lcg * X1_lcg + c_lcg) %% m_lcg
U2_lcg <- X2_lcg / m_lcg
cat("Iteración 2: X2 =", X2_lcg, "| U2 =", U2_lcg, "\n\n")

# ==============================================================================
# EJERCICIO 6 (VARIANTE): suponiendo que la Iteración 1 hubiera dado X1 = 8
# ==============================================================================

cat(" EJERCICIO 6 (VARIANTE): X1 supuesto = 8 \n\n")

X1_lcg <- 8   # valor supuesto
U1_lcg <- X1_lcg / m_lcg
cat("Iteración 1 (supuesta): X1 =", X1_lcg, "| U1 =", U1_lcg, "\n")

X2_lcg <- (a_lcg * X1_lcg + c_lcg) %% m_lcg
U2_lcg <- X2_lcg / m_lcg
cat("Iteración 2: X2 =", X2_lcg, "| U2 =", U2_lcg, "\n\n")

