# Simulation d'un dé équilibré avec une boucle
U <- runif(1)  # Générer une variable uniforme
k = 1:6

for (j in k) {
  if ((U > (j-1)/6) & (U <= j/6)) {
    result <- j
  }
}

print(result)



# Une méthode plus rapide est d’utiliser floor() :

# Simulation plus rapide d'un dé à 6 faces
de <- floor(6 * runif(1)) + 1
print(de)
