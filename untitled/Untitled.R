setwd("/Users/nguyencanhtung/Rstudio/R")
read.csv("WHO1.csv")
df = mtcars

auto_cars = subset(df, df$am == 0)
auto_cars
man_cars = subset(df, df$am == 1)
man_cars

man_cars = df[df$am == 1,]
man_cars

#.frame()
#merge()
#cbind()
#rbind()
#sample()
#fread()
#na.omit()
#dim()
#is.na()
