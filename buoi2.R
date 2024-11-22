age = c(1,2,3,4,5)
money = c(6,7,8,9,10)

data = data.frame(age, money)
data

buoi4Filepath = file.path("Users","nguyencanhtung", "Rstudio", "R", "buoi4")
setwd("/Users/nguyencanhtung/Rstudio/R/buoi4")


write.csv(data, file = "mydata.csv")
# read.csv("mydata.csv", row.names = F)


library(MASS)
data(Boston)
View(Boston)
dim(Boston)
head(Boston)


cars = mtcars
cars
cars$am
cars$trans = factor(cars$am, levels=c(0, 1), labels = c("Automatic", "Manual"))
cars

oldValues = c("0", "1")
newValues = factor(c("A", "M"))
cars$trans2 = newValues[match(cars$am, oldValues)]
cars

cars$trans3 = cars$am
cars$trans3 = replace(cars$trans3, cars$am == 0, "Auto")
cars$trans3 = replace(cars$trans3, cars$am == 1, "Man")
cars
cars$trans3


cars$power[cars$hp > 180] = "H"
cars$power[cars$hp < 96.5] = "L"
cars$power[cars$hp <= 180 & cars$hp >= 96.5] = "H"
cars

cars$power2 = cut(cars$hp, breaks = c(-Inf, 95.5, 180, Inf), labels = c("L", "M", "H"))
cars


