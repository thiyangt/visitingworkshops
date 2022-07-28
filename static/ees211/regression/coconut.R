## Nonliearity
circumference <- sort(round(rnorm(100, 30, 1), 1))
weight <- (circumference^2) + rnorm(100)
plot(circumference, weight)
coconut <- data.frame(weight=weight, circumference=circumference)
write.csv(coconut, file="static/regression/coconut.csv")

## Regression
coconut.lm <- lm(weight ~ circumference, data=coconut)
coconut.lm.result <- broom::augment(coconut.lm)
plot(coconut.lm.result$.fitted, coconut.lm.result$.resid)
shapiro.test(coconut.lm.result$.resid)

## Regression with transformation
plot(circumference, sqrt(weight))
coconut$sqrt.weight <- sqrt(weight)
coconut.lm2 <- lm(sqrt.weight ~ circumference, data=coconut)
coconut.lm.result2 <- broom::augment(coconut.lm2)
plot(coconut.lm.result2$.fitted, coconut.lm.result2$.resid)
shapiro.test(coconut.lm.result2$.resid)

## Non-constant variance
sales <- 
cost.advertisement <- 
