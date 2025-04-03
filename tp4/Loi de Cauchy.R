# ----- Étape 1 : Génération de la loi de Cauchy -----
n <- 100
X <- rnorm(n)
Y <- rnorm(n)
Z <- X / Y
summary(Z)
var(Z)

# ----- Étape 2 : Estimation de la moyenne par simulation -----
k <- 10000
n <- 10000
z_hat <- numeric(k)

for (i in 1:k) {
  X <- rnorm(n)
  Y <- rnorm(n)
  Z <- X / Y
  z_hat[i] <- mean(Z)
}

summary(z_hat)
var(z_hat)

# ----- Étape 3 (bonus) : Visualisation des quantiles [5%, 95%] -----
q05 <- quantile(z_hat, 0.05)
q95 <- quantile(z_hat, 0.95)
z_cut <- z_hat[z_hat > q05 & z_hat < q95]

# Histogramme des valeurs centrées entre les quantiles
hist(z_cut, prob = TRUE, main = "z_hat entre q5% et q95%")

