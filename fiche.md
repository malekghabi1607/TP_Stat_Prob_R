# 📌 Fiche de Révision - Langage R

## **1. Bases de R**

### 🔹 Créer des variables
```r
x <- 10      # Affectation d'une valeur
y = 20       # Alternative (mais <- est recommandé)
```

### 🔹 Vecteurs et opérations
```r
v <- c(1, 2, 3, 4, 5)  # Créer un vecteur
v[1]  # Accéder au premier élément
length(v)  # Taille du vecteur
sum(v)  # Somme des valeurs
mean(v)  # Moyenne
var(v)  # Variance
sd(v)  # Écart-type
```

### 🔹 Boucles et conditions
```r
for (i in 1:5) {
  print(i)
}

if (x > 5) {
  print("x est grand")
} else {
  print("x est petit")
}
```

### 🔹 Créer une fonction
```r
ma_fonction <- function(a, b) {
  return(a + b)
}
ma_fonction(5, 3)
```

---

## **2. Générer des nombres aléatoires**

### 🔹 Variables aléatoires
```r
runif(10)  # 10 nombres entre 0 et 1
rnorm(10, mean = 0, sd = 1)  # Loi normale
rexp(10, rate = 0.1)  # Loi exponentielle
rpois(10, lambda = 5)  # Loi de Poisson
```

---

## **3. Statistiques et Probabilités**

### 🔹 Moyenne et variance
```r
X <- runif(100)  # 100 nombres aléatoires
mean(X)  # Moyenne
var(X)  # Variance
```

### 🔹 Probabilités avec la loi normale
```r
pnorm(1.96)  # P(X ≤ 1.96) pour une loi normale standard
qnorm(0.975)  # Trouver la valeur seuil pour 97.5%
```

### 🔹 Simulation et probabilités empiriques
```r
n = 1000
X <- rnorm(n)
mean(X > 1.96)  # Estimation de P(X > 1.96)
```

---

## **4. Visualisation de données**

### 🔹 Histogramme
```r
hist(X, probability = TRUE)
```

### 🔹 Courbe de densité sur un histogramme
```r
curve(dnorm(x, mean = 0, sd = 1), col = "red", add = TRUE)
```

### 🔹 Boxplot
```r
boxplot(X)
```

### 🔹 Nuage de points
```r
plot(X, Y)
```

---

## **5. Manipulation de données**

### 🔹 Lire un fichier CSV
```r
data <- read.csv("data.csv")
head(data)  # Afficher les premières lignes
```

### 🔹 Résumé des données
```r
summary(data)
```

### 🔹 Tableaux de contingence
```r
table(data$Sex)
```

---

## **6. Simulation et Modélisation**

### 🔹 Simulation d’un jeu de dés
```r
n = 100
de <- sample(1:6, n, replace = TRUE)
table(de) / n  # Fréquence empirique des résultats
```

### 🔹 Théorème Central Limite
```r
n = 1000
moyennes <- numeric(n)
for (i in 1:n) {
  X <- rnorm(10)
  moyennes[i] <- mean(X)
}
hist(moyennes, prob = TRUE)
curve(dnorm(x, mean = 0, sd = 1/sqrt(10)), col = "red", add = TRUE)
```

---

## **7. Commandes utiles en examen**

| Action | Commande |
|--------|----------|
| Générer une variable uniforme | `runif(n)` |
| Générer une variable normale | `rnorm(n, mean, sd)` |
| Générer une variable exponentielle | `rexp(n, rate)` |
| Histogramme | `hist(x, prob = TRUE)` |
| Moyenne empirique | `mean(x)` |
| Variance empirique | `var(x)` |
| Probabilité P(X ≤ x) | `pnorm(x, mean, sd)` |
| Simulation d’une somme de dés | `floor(6 * runif(n)) + 1` |
| Charger un CSV | `read.csv("file.csv")` |
| Résumé des données | `summary(data)` |
| Table de contingence | `table(data$Sex)` |


