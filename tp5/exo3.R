# 1. Simulation avec lambda = 1/5
set.seed(1984)
n <- 50
lambda_vrai <- 1/5
data <- rexp(n, rate = lambda_vrai)

# Estimateur de lambda (méthode des moments)
lambda_hat <- 1 / mean(data)
lambda_hat

# 2. IC asymptotique à 95%
alpha <- 0.05
q <- qnorm(1 - alpha/2)
IC_inf <- lambda_hat - q * lambda_hat / sqrt(n)
IC_sup <- lambda_hat + q * lambda_hat / sqrt(n)
IC <- c(IC_inf, IC_sup)
IC

# 3. Loi de la variable Z : suit N(0,1) sous H0
# 4. Test : H0 : λ = 1/5 contre H1 : λ > 1/5
z_obs <- (lambda_hat - 1/5) / (lambda_hat / sqrt(n))
p_value <- 1 - pnorm(z_obs)
z_obs
p_value

# 5. Refaire avec lambda = 2/5
lambda2 <- 2/5
data2 <- rexp(n, rate = lambda2)
lambda_hat2 <- 1 / mean(data2)

# IC
IC_inf2 <- lambda_hat2 - q * lambda_hat2 / sqrt(n)
IC_sup2 <- lambda_hat2 + q * lambda_hat2 / sqrt(n)
IC2 <- c(IC_inf2, IC_sup2)
IC2

# Test
z_obs2 <- (lambda_hat2 - 1/5) / (lambda_hat2 / sqrt(n))
p_value2 <- 1 - pnorm(z_obs2)
z_obs2
p_value2

