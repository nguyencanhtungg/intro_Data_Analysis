numbers = c(1,2,3,4,5)

for (number in numbers){
  print(number)
}

x = sample(c(2,3,4,5,6, 10), 10, T)
x
y = sample(c(1,2,3,4,5,6,7,8,9,10), 10, T)
y
o = 0
for(i in 1 : length(10)) {
  o = o + x*x + y
}
o

