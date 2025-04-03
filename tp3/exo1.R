# ================================
# ⚓️ EXERCICE 1 - Titanic Dataset
# ================================

# 📌 Étape 1 : Chargement du fichier CSV
titanic <- read.csv("titanic.csv", stringsAsFactors = TRUE)

# 📌 Étape 2 : Aperçu de la base
dim(titanic)           # Dimensions de la base : nombre de lignes et colonnes
head(titanic)          # Les 6 premières lignes
colnames(titanic)      # Noms des colonnes
summary(titanic)       # Statistiques globales

# 📌 Étape 3 : Analyse des sexes
table(titanic$Sex)     # Nombre d'hommes et de femmes

# 📌 Étape 4 : Âge moyen et médian
mean(titanic$Age, na.rm = TRUE)    # Moyenne (ignorer les NA)
median(titanic$Age, na.rm = TRUE)  # Médiane

# 📌 Étape 5 : Pourcentage de survie
table(titanic$Survived)                   # Nombre de survivants et morts
prop.table(table(titanic$Survived)) * 100 # En pourcentage

# 📌 Étape 6 : Analyse des prix des billets par classe
Billets <- titanic$Fare
summary(Billets)

# 🎟 Prix des billets pour chaque classe
Billets1 <- Billets[titanic$Pclass == 1]
Billets2 <- Billets[titanic$Pclass == 2]
Billets3 <- Billets[titanic$Pclass == 3]

# 📊 Statistiques par classe
cat("Prix moyen en 1ère classe :", mean(Billets1), "\n")
cat("Prix moyen en 2e classe  :", mean(Billets2), "\n")
cat("Prix moyen en 3e classe  :", mean(Billets3), "\n")

# 📌 Étape 7 : Visualisation des prix selon les classes
boxplot(Billets ~ titanic$Pclass,
        xlab = "Classe",
        ylab = "Prix du billet",
        main = "Prix par classe",
        col = c("gold", "skyblue", "lightgreen"))

# 📌 Étape 8 : Analyse de la survie par sexe
TableSurvie <- table(titanic$Sex, titanic$Survived)
print(TableSurvie)

# 📊 Proportion dans chaque sexe
prop_femmes <- TableSurvie["female",] / sum(TableSurvie["female",])
prop_hommes <- TableSurvie["male",] / sum(TableSurvie["male",])
cat("Taux de survie femmes :", round(prop_femmes[2]*100, 2), "%\n")
cat("Taux de survie hommes :", round(prop_hommes[2]*100, 2), "%\n")

# 📊 Répartition des survivants et morts
prop_morts <- TableSurvie[,1] / sum(TableSurvie[,1])
prop_surv <- TableSurvie[,2] / sum(TableSurvie[,2])
print("Répartition des morts :")
print(round(prop_morts*100, 2))
print("Répartition des survivants :")
print(round(prop_surv*100, 2))

# 📈 Graphique de survie par sexe
barplot(TableSurvie,
        beside = TRUE,
        legend = rownames(TableSurvie),
        col = c("pink", "lightblue"),
        main = "Survie selon le sexe",
        names.arg = c("Décédé", "Survécu"))

# 📌 Étape 9 : Survie des enfants (≤18 ans) vs adultes
IsChild <- (titanic$Age <= 18)
TableSurvie2 <- table(IsChild, titanic$Survived)
rownames(TableSurvie2) <- c("Adulte", "Enfant")

print(TableSurvie2)

# 📊 Proportions enfants vs adultes
prop_adultes <- TableSurvie2[1,] / sum(TableSurvie2[1,])
prop_enfants <- TableSurvie2[2,] / sum(TableSurvie2[2,])
cat("Taux de survie adultes :", round(prop_adultes[2]*100, 2), "%\n")
cat("Taux de survie enfants :", round(prop_enfants[2]*100, 2), "%\n")

# 📊 Répartition dans les morts et survivants
prop_morts_enfants <- TableSurvie2[,1] / sum(TableSurvie2[,1])
prop_surv_enfants <- TableSurvie2[,2] / sum(TableSurvie2[,2])

cat("Répartition des morts :\n")
print(round(prop_morts_enfants * 100, 2))
cat("Répartition des survivants :\n")
print(round(prop_surv_enfants * 100, 2))

# 📈 Graphique de survie enfants vs adultes
barplot(TableSurvie2,
        beside = TRUE,
        legend = rownames(TableSurvie2),
        col = c("orange", "lightgreen"),
        main = "Survie Enfants vs Adultes",
        names.arg = c("Décédé", "Survécu"))

