mymat <- matrix(nrow=30, ncol=30)
mymat
for(i in 1:dim(mymat)[1]) {
  for(j in 1:dim(mymat)[2]) {
    mymat[i,j] = i*j
  }
}
mymat[1:20, 1:20]
mymat <- matrix(nrow=30, ncol=300)

curve(x+5, from = -10, to = 10, main = "x")
curve(x+0, from = -10, to = 10, main = "x")
curve(x+5, from = -10, to = 10, main = "x")

i <- 1
while (i < 6) {
  print (i)
  i = i+1
}

x <- 1
repeat {
  print (x)
  x = x+1
  if (x == 6){
    break
  }
}

par(mfrow=c(4,2), mar=c(2,2,2,2))
curve(x+100, from = -10, to = 10, main = "x1")
curve(x-100, from = -10, to = 10, main = "x2")
curve(-x-100, from = -10, to = 10, main = "x3")
curve(2*x+100, from = -10, to = 10, main = "x4")
par(mfrow=c(5,2), mar=c(2,2,2,2))
curve(x+0, from = -10, to = 10, main = "x")
curve(abs(x), from = -10, to = 10, main = "|x|")
curve(x^2, from = -10, to = 10, main = "x^2")
curve(x^3, from = -10, to = 10, main = "x^3")
curve(x^4, from = -10, to = 10, main = "x^4")
curve(x^5, from = -10, to = 10, main = "x^5")
curve(x^(1/2), from = -10, to = 10, main = "x^(1/2)")
curve(x^(1/3), from = -10, to = 10, main = "x^(1/3)")
curve(1/x, from = -10, to = 10, main = "1/x")
curve(1/(x^2), from = -10, to = 10, main = "1/(x^2)")

