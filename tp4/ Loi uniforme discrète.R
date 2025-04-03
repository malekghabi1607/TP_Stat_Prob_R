# ----- Étape 1 : Somme de dés -----
# La somme de 2 dés varie de 2 à 12, non équiprobable
# Espérance d’un dé : E = (1+2+3+4+5+6)/6 = 3.5
# Variance : Var = 35/12 ≈ 2.92

# ----- Étape 2 : Simulation d’un lancer -----
n <- 10
X <- floor(6 * runif(n)) + 1
mean(X)  # moyenne simulée (doit être proche de 3.5)

# ----- Étape 3 : Moyennes sur plusieurs simulations -----
k <- 100
S <- numeric(k)
n <- 10  # taille de chaque échantillon

for (i in 1:k) {
  X <- sample(1:6, n, replace = TRUE)
  S[i] <- mean(X)
}

hist(S, prob = TRUE, main = "Histogramme des moyennes de 10 dés")

# ----- Étape 4 : Vérification du TCL -----
S_centre <- (S - 3.5) / sqrt((35/12) / n)
hist(S_centre, prob = TRUE, main = "Distribution centrée-réduite")
curve(dnorm(x), col = "red", lwd = 2, add = TRUE)
