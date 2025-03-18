# Paramètre de la loi de Poisson
lmd = 16
n = 100  # Nombre de réalisations

# Initialisation
X = numeric(n)

for (i in 1:n) {
  p = 1  # Probabilité
  k = 0  # Compteur
  
  while (p > exp(-lmd)) {
    U <- runif(1)
    p = p * U
    k = k + 1
  }
  
  X[i] = k - 1
}

# Histogramme des résultats
hist(X, prob = TRUE, main = "Histogramme de la loi de Poisson (λ=16)", col = "green")

# Moyenne et variance
print(mean(X))  # Moyenne empirique
print(var(X))   # Variance empirique
