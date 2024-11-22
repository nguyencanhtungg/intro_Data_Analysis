msv = c(1,2,3,4,5,6,7,8)
score = c(7,8,9,7,8,8,9,7)

student = data.frame(msv, score)
student

setwd("/Users/nguyencanhtung/Rstudio/R/ontapgiuaki")
save(student, file = "student.csv")

write.csv(student, file = "student.csv", row.names = FALSE)
write.table(student, file = "student.txt", row.names = FALSE)


student_read_csv = read.csv("student.csv", header = TRUE)
View(student_read)

student_read_txt = read.table("student.txt", header = TRUE)
View(student_read_txt)

library(MASS)
data(Boston)
dim(Boston)
View(Boston)

df = mtcars
df
df$trans = factor(df$am, c(0,1), c("Auto", "Manu"), ordered = 0)
df

oldvalue = factor(c("0","1"))
newvalue = factor(c("Aut", "Man"))
df$trans2 = newvalue[match(df$am,oldvalue)]
df

df$trans3 = df$am
df$trans3 = replace(df$trans3, df$trans3 == 1, "Manua")
df$trans3 = replace(df$trans3, df$trans3 == 0, "Autom")
df

df$pow[df$hp < 96.5] = "L"
df$pow[df$hp > 180] = "H"
df$pow[df$hp <= 180 & df$hp >= 96.5] = "M"
df

df$power = cut(df$hp, breaks = c(-Inf, 96.5, 180, Inf), labels = c("L", "M", "H"))
df

df$vs = factor(df$vs)
df

df$vs = factor(mtcars$vs, levels = c("0", "1"))
df$vs1 = factor(mtcars$vs, levels = c("1", "0"))
df
df$vs2 = as.character(mtcars$vs)
str(df)
View(df)
