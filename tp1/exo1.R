# Nombre d'échantillons
n = 10

# Génération de n nombres aléatoires entre 0 et 1
U_n = runif(n)  
print(U_n)  # Affichage des valeurs générées

# Calcul de la moyenne et de la variance
moyenne_empirique = mean(U_n)  # Moyenne empirique
variance_empirique = var(U_n)   # Variance empirique

# Affichage des résultats
cat("Moyenne empirique :", moyenne_empirique, "\n")
cat("Variance empirique :", variance_empirique, "\n")

# Visualisation de la distribution avec un histogramme
hist(U_n, probability = TRUE, main = "Histogramme de U_n", col = "blue")
