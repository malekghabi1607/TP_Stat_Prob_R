# Paramètre de la loi exponentielle
lmb = 0.1
n = 1000

# Génération de variables exponentielles par inversion
U_n = runif(n)  # Variables uniformes
X_n = -log(1 - U_n) / lmb  # Transformation inverse

# Affichage des résultats
hist(X_n, probability = TRUE, main = "Histogramme Loi Exponentielle", col = "blue")

# Superposition de la densité théorique
curve(dexp(x, rate = lmb), col = "red", lwd = 2, add = TRUE)


# Probabilité empirique P(X > 30)
proba_empirique = mean(X_n > 30)

# Probabilité théorique P(X > 30) = 1 - P(X ≤ 30)
proba_theorique = pexp(30, lmb, lower.tail = FALSE)

cat("Probabilité empirique :", proba_empirique, "\n")
cat("Probabilité théorique :", proba_theorique, "\n")

# Extraction des valeurs X > 30
X_n_30 = X_n[which(X_n > 30)]

# Probabilité empirique P(X > 60 | X > 30)
proba_conditionnelle = mean(X_n_30 > 60)

cat("Probabilité empirique conditionnelle P(X > 60 | X > 30) :", proba_conditionnelle, "\n")
