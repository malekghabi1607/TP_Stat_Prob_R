# 1. Simulation de la population active
Pop17 <- rep(0, 29700000)
Pop17[1:2900000] <- 1  # 1 = chômeur

# 2. Moyenne de la population
taux <- mean(Pop17)
taux  # ≈ 0.09764 = taux de chômage réel

# 3. Sondage : échantillon aléatoire
n <- 100
Sondage17 <- sample(Pop17, n, replace = FALSE)

# 4. Moyenne observée dans l'échantillon
mean(Sondage17)  # taux observé

# 5. Intervalle de confiance à 80% (approximation normale)
alpha <- 0.2
phat <- mean(Sondage17)
q <- qnorm(1 - alpha/2)
ICInf <- phat - q * sqrt(phat*(1 - phat)/n)
ICSup <- phat + q * sqrt(phat*(1 - phat)/n)
IC <- c(ICInf, ICSup)
IC

# 6. Intervalle exact avec loi binomiale
prop.test(sum(Sondage17), n, conf.level = 0.8)$conf.int

# 7. Comparaison avec le vrai taux
taux %in% IC  # TRUE si le taux réel est dans l'IC

# 8. Augmentation de la taille d’échantillon
n <- 1000
Sondage17 <- sample(Pop17, n, replace = FALSE)
phat <- mean(Sondage17)
IC <- prop.test(sum(Sondage17), n, conf.level = 0.8)$conf.int
IC

# 9. Génération de 20 intervalles de confiance
n <- 100
k <- 20
ConfInts <- matrix(ncol = k, nrow = 2)
for (i in 1:k){
  Sondage17 <- sample(Pop17, n, replace = FALSE)
  ConfInts[,i] <- prop.test(sum(Sondage17), n, conf.level = 0.8)$conf.int
}
matplot(ConfInts, rbind(1:k, 1:k), type = "l", lty = 1,
        xlab = "Numéro de l’intervalle", ylab = "Taux")
abline(v = taux, lwd = 2, col = "red")  # vraie valeur

# 10. Refaire avec n = 1000
n <- 1000
ConfInts <- matrix(ncol = k, nrow = 2)
for (i in 1:k){
  Sondage17 <- sample(Pop17, n, replace = FALSE)
  ConfInts[,i] <- prop.test(sum(Sondage17), n, conf.level = 0.8)$conf.int
}
matplot(ConfInts, rbind(1:k, 1:k), type = "l", lty = 1,
        xlab = "Numéro de l’intervalle", ylab = "Taux (n=1000)")
abline(v = taux, lwd = 2, col = "red")

