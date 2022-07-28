# Page 76 - Montegomery
# Delivery Time (Minutes)
y <- c(16.68, 11.50, 12.03, 14.88, 13.75, 18.11, 8.00,
       17.83, 79.24, 21.50, 40.33, 21.00, 13.50, 19.75, 
       24.00, 29.00, 15.35, 19.00, 9.50, 35.10, 17.90,
       52.32, 18.75, 19.83, 10.75)
length(y)

# Number of Cases
x1 <- c(7, 3, 3, 4, 6, 7, 2, 7, 30, 5, 16, 10, 
        4, 6, 9, 10, 6, 7, 3, 17, 10, 26, 9, 8, 4)
length(x1)

# Distance (Feet)
x2 <- c(560, 220, 340, 80, 150, 330, 110, 210, 1460, 605, 
        688, 215, 255, 462, 448, 776, 200, 132, 36, 770, 
        140, 810, 450, 635, 150)
length(x2)

# Data frame

df <- data.frame(y=y, x1=x1, x2=x2)
multi.reg <- lm(y~x1+x2, data=df)
multi.reg

# Example 3.8
confint(multi.reg, level=0.95)

# Example 3.12
predict(multi.reg, list(x1=8, x2=275), interval="confidence")


predict(multi.reg,  list(x1=8, x2=275), interval="predict")
