#!/usr/bin/env Rscript
x <- c(1:30)
y_std <-c (62.160,60.050,60.900,164.690,57.950,137.180,139.970,60.600,73.670,60.480,64.240,155.360,56.860,58.050,148.500,65.760,56.050,149.560,65.510,69.260,50.830,57.180,54.430,153.100,59.940,72.780,154.310,55.590,63.300,148.800)
y_as <-c(0.980,1.100,0.400,2.510,2.380,0.280,0.320,0.250,2.760,1.860,0.690,0.500,0.560,0.980,0.320,0.650,0.240,1.080,1.420,0.300,0.240,0.320,0.270,2.130,1.070,1.310,2.180,0.960,1.900,1.880)
y_rho <-c(65.470,90.400,22.760,33.230,20.860,24.470,23.710,25.650,27.540,65.820,28.980,31.630,69.000,75.730,80.710,74.160,95.450,17.390,16.010,18.940,33.360,68.100,23.190,32.040,16.390,21.700,20.190,23.570,21.640,77.870)

#cor(x,y)
#plot(x,y,xlab="Independent",ylab="Dependent",main="Random Stuff")

#plot(x,y,xlab="Independent",ylab="Dependent",main="Random Stuff")

grn_1 <- rgb(0, 70/255, 25/255, 1)
grn_2 <- rgb(0, 160/255, 30/255, 1)
grn_3 <- rgb(150/255, 255/255, 153/255, 1)

plot(x,y_std, 
	  xlim=c(0,31), ylim=c(0,170),
     col=grn_1, #type="p", 
     pch = 15, #tipo de figura del punto 
     cex = 1.5, #tamaño del punto
     xlab= "Runs", #NA, 
     ylab= "Time (sencods)", #NA, 
     axes=T, #xaxt="n", #yaxt="n", #frame.plot="TRUE", #bty="n"
    ); 
lines(x, y_std, col=grn_1, lwd=4)

par(new=TRUE)

plot(x,y_rho, 
	  xlim=c(0,31), ylim=c(0,170),
     col=grn_2, #type="p", 
     pch = 16, #tipo de figura del punto 
     cex = 1.5, #tamaño del punto
     xlab= "Runs", #NA, 
     ylab= "Time (sencods)", #NA, 
     axes=T, #xaxt="n", #yaxt="n", #frame.plot="TRUE", #bty="n"
    ); 
lines(x, y_rho, col=grn_2, lwd=4)

par(new=TRUE)

plot(x,y_as, 
	  xlim=c(0,31), ylim=c(0,170),
     col=grn_3, #type="p", 
     pch = 17, #tipo de figura del punto 
     cex = 1.5, #tamaño del punto
     xlab= "Runs", #NA, 
     ylab= "Time (sencods)", #NA, 
     axes=T, #xaxt="n", #yaxt="n", #frame.plot="TRUE", #bty="n"
    ); 
lines(x, y_as, col=grn_3, lwd=4)

legend('topright', c("Std", "Std (rho) AS", "AS"), lty=1, lwd=4, col=c(grn_1, grn_2, grn_3), bty='n', cex=1.5)
#legend(x=3.3, y= 205, legend=c("Sender solver", "Helped receiver solver", "Receiver solver", "No communicating solver"), 
#        col=c("blue","red","orange","black"), lwd=1, lty=c(NA,NA,NA,NA), pch=c(19,19,19,19), bty='n', cex=1.5, merge=FALSE )

#points(x1,y1,col=2,pch=3)
#points(x2,y2,col=4,pch=5)
#legend(14,70,c("Original","one","two"),col=c(1,2,4),pch=c(1,3,5))
