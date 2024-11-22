#a Nhập từ bàn phím dữ liệu của 35 hộ vào R.
x = c(1700,1800,1900,2000,2100,2200,2300)
r = c(3,4,5,7,8,5,3)
data = rep(x,r)
data

#b Tính các giá trị trung bình và độ lệch tiêu chuẩn mẫu (s), biết trung bình
# và độ lệch tiêu chuẩn mẫu được tính theo công thức

#  làm theo công thức bài cho:
data
n = length(data)
mean_x2 = sum(data)/n
mean_x2
sd_x2 = sqrt(sum((data - mean_x2)^2)/(n-1))
sd_x2

# lam bang cau lenh san co
data
mean_x = mean(data)
mean_x
sd_x = sd(data)
sd_x

# c. Có ý kiến cho rằng: “Số điện trung bình của một hộ ở Hà Nội là 0190
# số điện”. Để kiểm tra ý kiến trên có đúng không, ta đặt T được tính bằng
# công thức dưới đây là Test thống kê.
n = length(data)
t = (mean_x-1900)*sqrt(n)/sd_x
if (t > 1.757) {
  print("so dien trung binh cua mot ho dan o ha noi khac 1900")
  
} else {
  print("so dien trung binh cua mot ho dan o hn la 1900")
}

#d
test = function(x,u) {
  mean_x = mean(x)
  sd_x = sd(x)
  n = length(x)
  t = (mean_x - u)/sd_x*sqrt(n)
  if(t > 1.757){
    return (FALSE)
  } else {
    return (TRUE)
  }
}

#e Hãy sinh ra một véc tơ mới, gồm 150 giá trị, là tiền điện tiêu thụ của 150
# hộ dân. Biết rằng, véc tơ này có phân phối chuẩn với cùng trung bình và
# độ lệch tiêu chuẩn của dữ liệu ban đầu.
data_new = rnorm(150, mean = mean_x, sd = sd_x)
data_new

# f Hãy kiểm tra khẳng định: “Số điện trung bình của một hộ ở Hà Nội là 190
# số điện” có chính xác trên dữ liệu vừa sinh ra không?
if(test(data_new,190)) {
  print("DUNG")
} else {
  print("SAI")
}

# Bai 2
chieu_dai = c(178,179,180,181,182)
so_ong = c(12,18,35,20,15)
dulieu = rep(chieu_dai,so_ong)
dulieu

#b
mean_a = sum(dulieu)/length(dulieu)


#d
# Số u = 185 , có đại diện cho dữ liệu ban đầu hay không?

if(test(data_new, 185)) {
  print("DUNG")
} else {
  print("SAI")
}

# e Hãy sinh ra một véc tơ mới (vecto y), gồm 1500 giá trị, là chiều dài của
# 1500 bóng tuýp. Biết rằng, véc tơ này có phân phối chuẩn với cùng
# trung bình và độ lệch tiêu chuẩn của dữ liệu ban đầu.

vector_y = rnorm(1500, )