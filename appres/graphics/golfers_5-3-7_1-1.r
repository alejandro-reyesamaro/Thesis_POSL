#!/usr/bin/env Rscript
x <- c(1:30)
y_sec <-c(1.380,0.950,0.430,0.630,1.450,0.790,2.780,2.880,1.080,1.420,2.230,0.220,0.420,2.060,0.710,0.610,2.000,0.630,0.370,0.800,0.400,0.930,0.160,1.120,0.900,0.830,0.330,1.000,1.320,0.420)
y_par <-c(1.060,0.380,0.900,0.580,0.640,0.480,0.650,0.550,0.760,0.520,0.500,0.700,0.470,0.280,0.600,0.510,0.650,0.480,0.610,0.470,0.360,0.630,0.920,0.630,0.560,0.710,0.620,0.470,0.450,0.640)

y_11_100 <-c(0.80,0.40,0.80,0.80,0.130,0.410,0.360,0.240,0.40,0.50,0.190,0.140,0.50,0.340,0.80,0.860,0.70,0.120,0.120,0.130,0.60,0.40,0.390,0.90,0.400,0.330,0.320,0.700,0.50,0.80)
y_11_50 <-c(0.280,0.350,0.380,0.480,0.500,0.400,0.470,0.450,0.530,0.400,0.430,0.600,0.480,0.370,0.580,0.770,0.570,0.390,0.380,0.590,0.460,0.750,0.500,0.500,0.560,0.560,0.560,0.390,0.710,0.460)
y_11_25 <-c(0.350,0.390,0.530,0.710,0.600,0.520,0.670,0.580,0.460,0.310,0.580,0.590,0.660,0.780,0.830,0.590,0.530,0.440,0.380,0.710,0.340,0.750,0.710,0.440,0.610,0.430,0.620,0.380,0.540,0.580)


#cor(x,y)
#plot(x,y,xlab="Independent",ylab="Dependent",main="Random Stuff")

#plot(x,y,xlab="Independent",ylab="Dependent",main="Random Stuff")

col_par <- grn_1 <- rgb(102/255, 0, 204/255, 1)
grn_1 <- rgb(204/255, 0, 0, 1)#rgb(0, 70/255, 25/255, 1)
grn_2 <- rgb(1, 128/255, 0, 1)#rgb(0, 160/255, 30/255, 1)
grn_3 <- rgb(204/255, 204/255, 0, 1)#rgb(150/255, 255/255, 153/255, 1)
s=rgb(0, 128/255, 1, 1)#"blue"
r="red"
rn="orange"
b="black"

p_ylim=c(0,1.1)
par(mar=c(4,5,1,1)+.1)

plot(x, y_11_100,
	  xlim=c(0,31), ylim=p_ylim,
     col=c(s,s,r,s,s,r,r,s,r,r,s,r,rn,r,r,s,s,s,s,r,r,s,r,rn,s,r,s,r,s,s),
     pch = 15, #tipo de figura del punto 
     cex = 1.5, #tamaño del punto
	  cex.lab=1.7,
     cex.axis=1.7,
     xlab= "Runs", #NA, 
     ylab= "Time (sencods)", #NA, 
     axes=T, #xaxt="n", #yaxt="n", #frame.plot="TRUE", #bty="n"
    );
lines(x, y_11_100, col=grn_1, lwd=3)
lines(x, rep.int(0.524, 30), col=grn_1, lwd=3, , lty=2)

par(new=TRUE)

plot(x, y_11_50,
	  xlim=c(0,31), ylim=p_ylim,
     col=c(r,r,s,r,r,s,b,s,b,b,s,s,r,s,b,s,b,b,b,r,r,r,r,b,b,b,s,r,b,b),
     pch = 16, #tipo de figura del punto 
     cex = 1.5, #tamaño del punto
	  cex.lab=1.7,
     cex.axis=1.7,
     xlab= "Runs", #NA, 
     ylab= "Time (sencods)", #NA, 
     axes=T, #xaxt="n", #yaxt="n", #frame.plot="TRUE", #bty="n"
    );
lines(x, y_11_50, col=grn_2, lwd=3)
lines(x, rep.int(0.495, 30), col=grn_2, lwd=3, , lty=2)

par(new=TRUE)

plot(x, y_11_25,
	  xlim=c(0,31), ylim=p_ylim,
     col=c(s,b,b,b,b,b,b,b,b,s,r,s,b,s,b,r,r,b,b,b,b,s,r,b,b,b,b,b,b,b),
     pch = 17, #tipo de figura del punto 
     cex = 1.5, #tamaño del punto
	  cex.lab=1.7,
     cex.axis=1.7,
     xlab= "Runs", #NA, 
     ylab= "Time (sencods)", #NA, 
     axes=T, #xaxt="n", #yaxt="n", #frame.plot="TRUE", #bty="n"
    );
lines(x, y_11_25, col=grn_3, lwd=3)
lines(x, rep.int(0.554, 30), col=grn_3, lwd=3, , lty=2)

lines(x, y_par, col=col_par, lwd=3)
lines(x, rep.int(0.593, 30), col=col_seq, lwd=3, , lty=2)
legend(	'topright', 
			c("Parallel (no communication)", 
			"100% communication 1 to 1", 
			"50% communication 1 to 1", 	
			"25% communication 1 to 1"), 
			lty=1, lwd=4, 
			col=c(col_par, grn_1, grn_2, grn_3), bty='n', cex=1.5)

dev.copy2pdf(file="g11.pdf")
