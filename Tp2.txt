##la simulation du mouvement Brownien geometrique.
simulation= function(n,t,s0,mu,sigma){
  y=rnorm(n,0,1)
  dt=t/n
  s=numeric(n)
  s[1]=s0
  for (i in 2:n) {
    s[i]=s[i-1]*exp(mu*dt+sigm*sqrt(dt)*y[i-1])
    
  }
  return(s)
}
n=252
t=1
s0=d[1]
d1<-simulation(n,t,s0,mu,sigm)
par(mfrow=c(1,2))

plot(d1,type="l",main="noveau",xlab="noveau",col=2)


##simulation d'un trajectoire moyenne
mat_sim_tra=t(sapply (1:1000, function(i) simulation(252,1,s0,mu,sigm)))
vec_sim_traj_moy=apply(mat_sim_tra,2,mean)


plot(d,type = "l",main="block",col="red")
lines(vec_sim_traj_moy,type='l',main="block",col="blue")
legend("topright",legend=c("reel ","simule"),text.col=c("red","blue"),col=c("red","blue"))


##des previsions futures pour les donnees journalieres de cloture.
cat(" prix cloture du 126 eme jour est : ", vec_sim_traj_moy[126])

