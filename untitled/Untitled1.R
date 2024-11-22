#bai 3
dtx = sample(1:10, 300, replace = TRUE)
dtx

dgk = sample(seq(0, 10, 0.5), 300 , replace = TRUE)
dgk

dck = sample(seq(0, 10, 0.5), 300 , replace = TRUE)
dck

gioitinh = sample(c("Nam", "Nu"), 300, replace = TRUE)
gioitinh

chieucao = sample(seq(150,200,0.25), 300, replace = TRUE)
cannang = sample(seq(40,90, 0.25), 300, replace = TRUE)

ID = 1:300

sv = data.frame(ID, gioitinh, chieucao, cannang, dtx, dgk, dck)
View(sv)

#i
sv$diemgiuaki2 = pmin(sv$dgk + 2, 10)
View(sv)

#bai 4
n = 300


crim = rnorm(n,3.613,8.6)
while(any(crim<0)) {
  crim[crim<0 | crim>100] = rnorm(sum(crim<0 | crim>100), 3.613, 8.6)
}
crim

indus = rnorm(n, 11.14, 6.86)
while(any(indus < 0 | indus > 100)) {
  indus[indus<0 | indus > 100] = rnorm(sum(indus<0 | indus > 100), 11.14, 6.86)
}
indus

rm = sample(2:6,n, replace = TRUE)
rm

tax = rnorm(n, 408, 167)
while(any(tax < 0 | tax >10000)) {
  tax[tax< 0 | tax >1000] = rnorm(sum(tax< 0 | tax >1000), 408, 167)
}
tax

nox = rnorm(n, 0.55, 0.116)
while(any(nox < 0.38 | nox > 0.87)) {
  nox[nox < 0.38 | nox > 0.87] = rnorm(sum(nox < 0.38 | nox > 0.87), 0.55, 0.116)
}
nox

