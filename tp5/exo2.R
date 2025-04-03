# 1. Simulation 2021
Pop21 <- rep(0, 28900000)
Pop21[1:5370000] <- 1  # 5.37 millions au chômage

# 2. Sondage et IC à 90%
n <- 1000
Sondage21 <- sample(Pop21, n, replace = FALSE)
phat21 <- mean(Sondage21)
prop.test(sum(Sondage21), n, conf.level = 0.9)$conf.int

# Comparer avec 2017
prop.test(sum(Sondage17), n, conf.level = 0.9)$conf.int

# 3. Test statistique H0 : p = 0.098 (valeur de 2017)
taux2017 <- 0.098
prop.test(sum(Sondage21), n, p = taux2017, conf.level = 0.9)

# 4. Conclusion : si p-value < 0.1 alors H0 rejetée, donc différence significative

