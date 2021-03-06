par=c(0.310,0.290,0.150,0.110,0.310,0.180,0.160,0.340,0.160,0.600,0.130,0.120,0.130,0.120,0.110,0.150,0.640,0.230,0.370,0.100,0.130,0.320,0.490,0.160,0.290,0.170,0.150,0.110,0.320,0.310)
com11_100=c(0.080,0.040,0.080,0.080,0.130,0.410,0.360,0.240,0.040,0.050,0.190,0.140,0.050,0.340,0.080,0.860,0.070,0.120,0.120,0.130,0.060,0.040,0.390,0.090,0.400,0.330,0.320,0.700,0.050,0.080)
com11_50=c(0.060,0.320,0.080,0.200,0.270,0.120,0.150,0.220,0.270,0.070,0.350,0.660,0.110,0.030,0.170,0.050,0.300,0.090,0.090,0.080,0.140,0.150,0.090,0.400,0.270,0.100,0.120,0.260,0.130,0.060)
com11_25=c(0.360,0.640,0.060,0.050,0.160,0.710,0.290,0.310,0.060,0.050,0.150,0.110,0.470,0.110,0.220,0.080,0.040,0.200,0.230,0.300,0.040,0.320,0.050,0.290,0.760,0.040,0.060,0.050,0.280,0.180)
com1n_100=c(0.050,0.040,0.180,0.080,0.060,0.160,0.720,0.120,0.050,0.150,0.060,0.170,0.150,0.320,0.470,0.070,0.020,0.270,0.050,0.230,0.140,0.120,0.100,0.130,0.560,0.330,0.150,0.300,0.370,0.480)
com1n_50=c(0.040,0.080,0.050,0.270,0.280,0.030,0.070,0.140,0.070,0.340,0.260,0.120,0.200,0.150,0.190,0.060,0.180,0.170,0.290,0.070,0.220,0.230,0.070,0.400,0.430,0.510,0.110,0.090,0.070,0.160)
com1n_25=c(0.100,0.090,0.020,0.240,0.210,0.240,0.120,0.060,0.380,0.120,0.120,0.130,0.560,0.560,0.320,0.240,0.320,0.100,0.170,0.630,0.070,0.240,0.190,0.210,0.260,0.250,0.300,0.210,0.530,0.080)
com1n_v2=c(0.230,0.250,0.360,0.180,0.190,0.070,0.090,0.180,0.170,0.160,0.030,0.070,0.020,0.050,0.080,0.050,0.270,0.160,0.090,0.130,0.140,0.280,0.070,0.080,0.050,0.180,0.120,0.090,0.130,0.140)
com1n2_v2=c(0.200,0.270,0.110,0.220,0.210,0.190,0.280,0.220,0.100,0.150,0.240,0.080,0.040,0.090,0.050,0.040,0.110,0.090,0.130,0.180,0.180,0.100,0.070,0.070,0.270,0.120,0.100,0.100,0.070,0.250)
com1n4_v2=c(0.060,0.070,0.030,0.170,0.160,0.100,0.080,0.160,0.160,0.080,0.050,0.110,0.140,0.080,0.070,0.210,0.330,0.200,0.150,0.150,0.080,0.080,0.100,0.110,0.060,0.060,0.090,0.070,0.220,0.400)
com11_100_v2=c(0.130,0.110,0.120,0.140,0.190,0.040,0.060,0.060,0.040,0.120,0.180,0.200,0.120,0.090,0.070,0.020,0.100,0.080,0.030,0.040,0.040,0.200,0.180,0.180,0.030,0.060,0.150,0.200,0.060,0.130)
com11_50_v2=c(0.040,0.040,0.120,0.080,0.030,0.110,0.060,0.090,0.080,0.130,0.050,0.140,0.200,0.060,0.090,0.060,0.050,0.080,0.080,0.150,0.070,0.090,0.100,0.210,0.070,0.080,0.090,0.040,0.030,0.110)
com11_25_v2=c(0.260,0.180,0.060,0.070,0.200,0.070,0.160,0.100,0.090,0.100,0.140,0.080,0.060,0.060,0.070,0.080,0.200,0.140,0.120,0.040,0.130,0.140,0.160,0.100,0.120,0.110,0.080,0.220,0.140,0.070)

data<-data.frame(par, com11_100,com11_50,com11_25,com1n_100,com1n_50,com1n_25,com1n_v2,com1n2_v2,com1n4_v2,com11_100_v2,com11_50_v2,com11_25_v2)

dev=pdf("g5_comm_BP.pdf", height=17, width=21)
par(cex.axis=2)
par(mar=c(25,6,1,1)+.1)
p_ylim=c(0,0.8);

col_par_box <- rgb(1, 153/255, 153/255, 1)
col_comm_box <- rgb(102/255, 178/255, 1, 1)


col_boxes = c(col_par_box,rep.int("white",10),col_comm_box,"white")

lablist= c("                       No communication",
			  "100% Simple communication 1 to 1",
           " 50% Simple communication 1 to 1",
			  " 25% Simple communication 1 to 1",
			  "100% Simple communication 1 to n",
			  " 50% Simple communication 1 to n",
			  " 25% Simple communication 1 to n",
			  "     Cyclic communication 1 to n",
			  "   Cyclic communication 1 to n/2",
			  "   Cyclic communication 1 to n/4",
			  "100% Cyclic communication 1 to 1",
			  " 50% Cyclic communication 1 to 1",
			  " 25% Cyclic communication 1 to 1")
boxplot(data, las = 2, names = c(rep.int("",13)), cex = 1.5, ylim=p_ylim, col=col_boxes)
text(x=c(1:13), y=rep.int(0,13), cex=2, labels=c("0","13","10","5","15","12","4","25", "26", "19", "20", "20", "5"))
text(x = seq(-0.2,11.8,by=1), par("usr")[3] - 0.15, labels = lablist, srt = 45, adj= 2, pos = 1, xpd = TRUE, cex=2)

x <- c(0:14)
lines(x, rep.int(mean(par), 15), col="red", lwd=3, lty=2)
lines(x, rep.int(mean(com11_50_v2), 15), col="blue", lwd=3, , lty=2)

legend(	'topright', 
			c("Parallel (no communication) mean", "50% Cyclic communication 1 to 1 mean"), 
			lty=2, lwd=4,
			col=c("red", "blue"), 
			bty='n', # box type around legend
			pch = c(NA, NA),
			cex=2)

mtext("Communication strategy", side=1, line=22, cex=2.5)
mtext("Time (seconds)", side=2, line=4, cex=2.5)
dev.off()

