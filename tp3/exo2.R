# ================================
# 📊 EXERCICE 2 - Données synthétiques
# ================================

# 📌 Étape 1 : Chargement des bases de données
set1 <- read.csv("set1.csv")
set2 <- read.csv("set2.csv")

# 📌 Étape 2 : Résumés statistiques
cat("Résumé de set1 :\n")
summary(set1)

cat("\nRésumé de set2 :\n")
summary(set2)

# 📌 Étape 3 : Écart-type des variables
cat("\nÉcarts-types set1 :\n")
sd(set1[,1])  # X1
sd(set1[,2])  # Y1

cat("\nÉcarts-types set2 :\n")
sd(set2[,1])  # X2
sd(set2[,2])  # Y2

# 📌 Étape 4 : Coefficients de corrélation
cat("\nCorrélation set1 (X1, Y1) :\n")
cor(set1[,1], set1[,2])

cat("\nCorrélation set2 (X2, Y2) :\n")
cor(set2[,1], set2[,2])

# 📌 Étape 5 : Boxplots
boxplot(set1,
        main = "Boxplot - set1",
        col = c("orange", "lightblue"),
        names = c("X1", "Y1"))

boxplot(set2,
        main = "Boxplot - set2",
        col = c("pink", "lightgreen"),
        names = c("X2", "Y2"))

# 📌 Étape 6 : Nuages de points
plot(set1[,1], set1[,2],
     main = "Nuage de points - set1",
     xlab = "X1", ylab = "Y1",
     pch = 19, col = "salmon", lwd = 2)

plot(set2[,1], set2[,2],
     main = "Nuage de points - set2",
     xlab = "X2", ylab = "Y2",
     pch = 19, col = "darkblue", lwd = 2)

