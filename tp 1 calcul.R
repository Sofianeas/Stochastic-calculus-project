
#############TP1###############
block<-read.csv2("C:/Users/a/Downloads//block.inc (1).csv")
d<-block$Close
d<-as.numeric(d)
summary(d)
r<-numeric(length(d)-1)
for (i in 2:length(d)) {r[i]=log(d[i])-log(d[i-1])}
##pour les donnees journalieres de cloture sur annee
##les correlogrammes (ACF) de la serie r des rendements et du carre r^2
plot(d,type="l",main="block",xlab="block",)
acf(r)
acf(r^2)
##tester l'autocorrelation
b1=Box.test(r,lag = 10,type ="Ljung-Box")
b2=Box.test(r^2,lag = 10,type ="Ljung-Box")
hist(r)
curve(dnorm(x,mean(r),sd(r)),add=T)
k=shapiro.test(r)
##les estimateurs du maximum de vraisemblance de mu et sigm.
h=1/252
rbar=mean(r)
sr2=var(r)
##estimation de mu
mu=rbar/h+0.5*sr2/h
##estimation de sigm
sigm=sqrt(sr2/h)

###pour les donnees journalieres de cloture sur 6mois###
r6=r[126:252]
d6=d[126:252]
plot(d6,type="l",main="block",xlab="block")
##les correlogrammes (ACF) de la serie r6 des rendements et du carre r6^2
acf(r6)
acf(r6^2)
##tester l'autocorrelation
b16=Box.test(r6,lag = 10,type ="Ljung-Box")
b26=Box.test(r6^2,lag = 10,type ="Ljung-Box")
##l'histogramme de la serie de rendement{r6}
hist(r6)
##Tester la normalite de {r6}
curve(dnorm(x,mean(r6),sd(r6)),add=T)
k6=shapiro.test(r6)
##les estimateurs du maximum de vraisemblance de mu6 et sigm6.
h=1/252
rbar6=mean(r6)
sr26=var(r6)
##estimation de mu6
mu6=rbar6/h+0.5*sr26/h
##estimation de sigm6
sigm6=sqrt(sr26/h)

###pour les donnees journalieres de cloture sur 4mois###
r4=r[168:252]
d4=d[168:252]
##les correlogrammes (ACF) de la serie r4 des rendements et du carre r4^2
plot(d4,type="l",main="block",xlab="block")
acf(r4)
acf(r4^2)
##tester l'autocorrelation
b14=Box.test(r4,lag = 10,type ="Ljung-Box")
b24=Box.test(r4^2,lag = 10,type ="Ljung-Box")
##l'histogramme de la serie de rendements {r4}
hist(r4)
##Tester la normalite de {r4}
curve(dnorm(x,mean(r4),sd(r4)),add=T)
k4=shapiro.test(r4)
##les estimateurs du maximum de vraisemblance de mu4 et sigm4.
h=1/252
rbar4=mean(r4)
sr24=var(r4)
##estimation de mu4
mu4=rbar4/h+0.5*sr24/h
##estimation de sigm4
sigm4=sqrt(sr24/h)
