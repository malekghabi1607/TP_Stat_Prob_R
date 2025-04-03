# ----- Étape 1 : Vérification densité exponentielle -----
n <- 1000
Y <- rexp(n, rate = 1/5)  # λ = 1/5
hist(Y, prob = TRUE, main = "Histogramme loi exponentielle")
curve(dexp(x, rate = 1/5), col = "red", lwd = 2, add = TRUE)

# ----- Étape 2 : Moyennes empiriques -----
K <- 1000
n <- 100  # échantillons de taille 100
Y_bar <- numeric(K)

for (k in 1:K) {
  Y_bar[k] <- mean(rexp(n, rate = 1/5))
}

# Transformation centrée-réduite
Y_c <- (Y_bar - 5) / (5 / sqrt(n))

hist(Y_c, prob = TRUE, main = "TCL sur loi exponentielle")
curve(dnorm(x), col = "red", lwd = 2, add = TRUE)

