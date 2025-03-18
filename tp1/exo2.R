# Nombre de simulations
n = 10000

# Initialisation des résultats
vol_n = numeric(n)  # Vecteur pour stocker les résultats
n_pass = numeric(n)  # Vecteur pour stocker le nombre de passagers présents

for (i in 1:n) {
  U_i <- runif(110)  # Simuler 110 variables uniformes entre 0 et 1
  n_pass[i] <- sum(U_i < 0.93)  # Comptabiliser les passagers venus (93% de chance)
  vol_n[i] <- (n_pass[i] > 104)  # 1 si le vol est surchargé
}

# Estimation de la probabilité de surbooking
prob_surcharge = mean(vol_n)
print(prob_surcharge)
