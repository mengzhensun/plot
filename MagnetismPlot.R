setwd("~/Documents/Statistical Thermodynamics/isingMag")
T055 = read.table("0_55.txt")
T1 = read.table("1.txt")
T14 = read.table("1_4.txt")
T18 = read.table("1_8.txt")
T23 = read.table("2_3.txt")
T227 = read.table("2_27.txt")
T27 = read.table("2_7.txt")
T32 = read.table("3_2.txt")
T12 = read.table("1_2.txt")

dat <- data.frame(T055)
dat[1:2]<-NULL
dat$T1 <- T1$V3
dat$T14 <- T14$V3
dat$T18 <- T18$V3
dat$T23 <- T23$V3
dat$T227 <- T227$V3
dat$T27 <- T27$V3
dat$T32 <- T32$V3
dat$T12 <- T12$V3
mag <- data.frame(colMeans(dat))
mag$x <- c(0.5,1.0,1.4,1.8,2.3,2.27,2.7,3.2,1.2)
colnames(mag)<-c("Y","X")
library(ggplot2)
ggplot(data = mag)+
  geom_line(mapping = aes(x=X, y=Y))+
  labs(title = "Ising Model Magnetism versus Temperature",x ="T/K", y = "M", color ="M")
