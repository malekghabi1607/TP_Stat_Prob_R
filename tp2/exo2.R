# Calcul des probabilités avec pnorm()
p1 = pnorm(0.41)  # P(X ≤ 0.41)
p2 = pnorm(-0.2)  # P(X < -0.2)
p3 = 1 - pnorm(-1.54)  # P(X ≥ -1.54)
p4 = pnorm(1.2) - pnorm(-0.63)  # P(-0.63 ≤ X ≤ 1.2)

cat("P(X ≤ 0.41) =", p1, "\n")
cat("P(X < -0.2) =", p2, "\n")
cat("P(X ≥ -1.54) =", p3, "\n")
cat("P(-0.63 ≤ X ≤ 1.2) =", p4, "\n")

# Trouver u tel que P(X ≤ u) = 0.75
u = qnorm(0.75)
cat("Valeur seuil pour P(X ≤ u) = 0.75 :", u, "\n")
# Simulation de 100 observations N(0,1)
n = 100
X_norm = rnorm(n, mean = 0, sd = 1)

# Histogramme de la distribution simulée
hist(X_norm, probability = TRUE, main = "Histogramme Loi Normale", col = "blue")

# Superposition de la densité théorique
curve(dnorm(x, mean = 0, sd = 1), col = "red", lwd = 2, add = TRUE)

# Augmentation de la taille de l’échantillon
n = 10000
X_large = rnorm(n)

# Approximation empirique des probabilités
p1_emp = mean(X_large <= 0.41)
p2_emp = mean(X_large < -0.2)
p3_emp = mean(X_large >= -1.54)
p4_emp = mean(X_large >= -0.63 & X_large <= 1.2)

cat("Empirique - P(X ≤ 0.41) =", p1_emp, "\n")
cat("Empirique - P(X < -0.2) =", p2_emp, "\n")
cat("Empirique - P(X ≥ -1.54) =", p3_emp, "\n")
cat("Empirique - P(-0.63 ≤ X ≤ 1.2) =", p4_emp, "\n")
