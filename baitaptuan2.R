# Nguyễn Cảnh Tùng 
# MSV: 23001950

# cau 1,2 đã chữa
# cau 3
gk = c (7,8,9,4,8,7,5)
# a
gk[3]
# b
# gk[3] = 8
# c
gk = pmin(gk + 1.5, 10)
gk

tx = c(1,2,4,6,4,8,3)
ck = c(6,8,3,5,10,3,10)

# d
tbc = 0.2*tx + 0.2*gk + 0.6*ck
tbc

#e
diemchu = tbc
diemchu[diemchu >= 8] = "A"
diemchu[diemchu < 8] = "B"
diemchu

diemchu = cut(diemchu, breaks = c(-Inf, 8 , Inf), labels = c("A", "B"))
diemchu

# Cau 4
# a
pr = c(9000, 9500, 9400, 9400, 10000, 9500,10300, 10200)
#b
mean(pr)
if (mean(pr) > 9500) {
  print("Lon hon 9500")
} else if (mean(pr) < 9500) {
  print("Nho hon 9500")
}else {
  print("Bang 9500")
}

#c
socuahang =  sum(pr > mean(pr))
socuahang

#cau 5
thoigiandilam = c(17, 16, 20, 24, 22, 15, 21, 15, 17, 22)
#a
cat("min: " , min(thoigiandilam))
cat("mean: " , mean(thoigiandilam))
cat("max: " , max(thoigiandilam))

#b

thoigiandilam[thoigiandilam == 24] = 18
thoigiandilam

#c
songaynhieu20phut = sum(thoigiandilam > 20)
songaynhieu20phut

tileithon17phut = (sum(thoigiandilam <= 17))/length(thoigiandilam)
tileithon17phut

#cau6
bill = c(46,33,39,37,46,30,48,32,49,35,30,48)
#a
cat("tong tien", sum(bill))
#b
cat("mean: ", mean(bill))
cat("min: ", min(bill))
cat("max: ", max(bill))

#c
bill[4] = 40
bill

#d
cat("so thang lon hon 40$: ", sum(bill > 40))
cat("ti le thang lon hon 40: ", sum(bill > 40) / length(bill))

#cau7
#a
teddy_sales = c(15,20,18,25,30,35,42)
cat("tong so gau bong: ", sum(teddy_sales))
#b
cat("mean: ", mean(teddy_sales))
cat("min: ", min(teddy_sales))
cat("max: ", max(teddy_sales))

#c
teddy_sales[teddy_sales == 42] = 32
teddy_sales

#d
cat("so ngay it nhat 30: ", sum(teddy_sales >= 30))
cat("ti le it hon 20: ", sum(teddy_sales < 20)/length(teddy_sales))

#cau 8
# a
dayso = seq(5, -11, -0.3)
dayso

#b
vectorb = rep(c(-1,3,5,7,9), 2)
vectorb = sort(vectorc)
vectorb

#c
vectorc = c((6:12), rep(4,3))
vectorc

#d
vectord = seq(102, length(vectorc), length = 9)
vectord

#cau 9
#a
vectora1 = seq(3,6,length = 5)
vectora1
vectora2 = rep(c(2,-5.1,-33), 2)
vectora2

#b
vectorb = c(vectora1[1:(length(vectora1) - 1)])
vectorb

#c
vectora1 = sort(vectora1)
vectora1

#d
vectord = c(rep(vectorb[2],3),rep(vectorb[5],4), rep(vectorb[length(vectorb) - 1]),1)
vectord

#cau 10
#a
matrixa = matrix(c(42,4,5,17,8,5,63,29,76,54,31,12,2,9,23,4), nrow = 4, ncol =  4)
matrixa

#b
cat("\nPhan tu cot 3 hang 2: " , matrixa[2,3])
cat("\nHang thu 2: " , matrixa[2,])
cat("\nCot thu 4: ", matrixa[,4])

matrixa

#c
# Trích xuất các hàng có giá trị ở cột 1 lớn hơn 7
submatrixc <- matrixa[matrixa[, 1] > 7, ]
submatrixc

#d
maxd = which(matrixa == max(matrixa), arr.ind = TRUE)
maxd
mind = which(matrixa == min(matrixa), arr.ind = TRUE)
mind

#cau 11

mat2 = matrix(c(seq(1,10,2), 5:1, rep(2017,5)), ncol = 3)
mat2
#a
colnames(mat2) = c("day","month","year")
#b
rownames(mat2) = c("a","b","c","d","e")
mat2

#c

matc = mat2[mat2[,"month"] >= 3, ]
matc

#d
mat2[mat2 == 2017] = 2018
mat2

#e
mat2[,2] = mat2[,2]*7
mat2
