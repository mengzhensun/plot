setwd("~/Documents/Statistical Thermodynamics/ising")
T15 = read.table("1_5.txt")
T19 = read.table("1_9.txt")
T227 = read.table("2_27.txt")
T32 = read.table("3_2.txt")
T46 = read.table("4_6.txt")
T52 = read.table("5_2.txt")
T1 = read.table("1.txt")
T05 = read.table("0_5.txt")
library(ggplot2)
dat <- data.frame(T15)
dat$T19<- T19$V2
dat$T227<- T227$V2
dat$T32<- T32$V2
dat$T46<- T46$V2
dat$T52 <- T52$V2
dat$T1 <- T1$V2
dat$T05 <- T05$V2
ggplot(data = dat)+
  geom_line(mapping = aes(x=V1, y=V2, color="1.5"))+ 
  geom_line(mapping = aes(x=V1, y=T19, color="1.9"))+
  geom_line(mapping = aes(x=V1, y=T227, color="2.27"))+
  geom_line(mapping = aes(x=V1, y=T32, color="3.2"))+
  geom_line(mapping = aes(x=V1, y=T46, color="4.6"))+
  geom_line(mapping = aes(x=V1, y=T52, color="5.2"))+
  geom_line(mapping = aes(x=V1, y=T1, color="1.0"))+
  geom_line(mapping = aes(x=V1, y=T05, color="0.5"))+
  labs(title = "Ising Model Correlation vs. Distance",x ="distance", y = "correlation", color ="Temperature(K)")
