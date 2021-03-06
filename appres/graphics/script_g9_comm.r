par=c(1.060,0.380,0.900,0.580,0.640,0.480,0.650,0.550,0.760,0.520,0.500,0.700,0.470,0.280,0.600,0.510,0.650,0.480,0.610,0.470,0.360,0.630,0.920,0.630,0.560,0.710,0.620,0.470,0.450,0.640)
com11_50_v2=c(0.170,0.220,0.430,0.500,0.500,0.340,0.330,0.280,0.420,0.470,0.300,0.460,0.120,0.490,0.540,0.480,0.200,0.360,0.520,0.480,0.370,0.430,0.380,0.340,0.530,0.190,0.300,0.130,0.490,0.280)
com11_100_v2=c(0.330,0.350,0.350,0.100,0.280,0.280,0.340,0.560,0.520,0.400,0.510,0.380,0.480,0.220,0.590,0.360,0.430,0.740,0.240,0.180,0.190,0.150,0.220,0.510,0.380,0.260,0.500,0.500,0.380,0.350)

data<-data.frame(
par,
com11_100=c(0.80,0.40,0.80,0.80,0.130,0.410,0.360,0.240,0.40,0.50,0.190,0.140,0.50,0.340,0.80,0.860,0.70,0.120,0.120,0.130,0.60,0.40,0.390,0.90,0.400,0.330,0.320,0.700,0.50,0.80),
com11_50=c(0.280,0.350,0.380,0.480,0.500,0.400,0.470,0.450,0.530,0.400,0.430,0.600,0.480,0.370,0.580,0.770,0.570,0.390,0.380,0.590,0.460,0.750,0.500,0.500,0.560,0.560,0.560,0.390,0.710,0.460),
com11_25=c(0.350,0.390,0.530,0.710,0.600,0.520,0.670,0.580,0.460,0.310,0.580,0.590,0.660,0.780,0.830,0.590,0.530,0.440,0.380,0.710,0.340,0.750,0.710,0.440,0.610,0.430,0.620,0.380,0.540,0.580),
com1n_100=c(0.840,0.350,0.320,0.380,0.450,0.550,0.590,0.620,0.400,0.620,0.550,0.620,0.520,0.580,0.810,0.520,0.500,0.620,0.730,0.430,0.630,0.850,0.440,0.630,0.670,0.440,0.590,0.490,0.320,0.600),
com1n_50=c(0.410,0.380,0.410,0.440,0.450,0.400,0.500,0.630,0.600,0.760,0.510,0.780,0.450,0.380,0.500,0.390,0.660,0.740,0.490,0.380,0.180,0.480,0.650,0.540,0.520,0.960,0.610,0.540,0.460,0.320),
com1n_25=c(0.760,0.760,0.530,0.630,0.750,0.590,0.470,0.500,0.640,0.480,0.530,0.700,0.560,0.350,0.670,0.600,0.520,0.430,0.500,0.680,0.570,0.340,0.540,0.610,0.340,0.450,0.470,0.490,0.580,0.550),
com1n_v2=c(0.780,0.660,0.550,0.880,0.510,0.780,0.470,0.540,0.300,0.740,0.490,0.310,0.520,0.650,0.280,0.470,0.540,0.670,0.410,0.350,0.540,0.470,0.500,0.590,0.780,0.670,0.560,0.380,0.580,0.600),
com1n2_v2=c(0.600,0.340,0.620,0.630,0.440,0.500,0.780,0.410,0.410,0.660,0.350,0.300,0.420,0.360,0.690,0.460,0.820,0.540,0.730,0.500,0.580,0.540,0.670,0.720,0.360,0.470,0.480,0.300,0.610,0.620),
com1n4_v2=c(0.440,0.490,0.230,0.400,0.280,0.280,0.490,0.560,0.500,0.410,0.320,0.190,0.310,0.340,0.210,0.340,0.520,0.630,0.370,0.310,0.250,0.450,0.590,0.730,0.660,0.230,0.360,0.450,0.280,0.340),
com11_100_v2,
com11_50_v2,
com11_25_v2=c(0.400,0.370,0.570,0.520,0.620,0.420,0.600,0.430,0.540,0.350,0.460,0.450,0.390,0.450,0.440,0.430,0.580,0.390,0.630,0.280,0.460,0.410,0.740,0.290,0.290,0.250,0.350,0.520,0.480,0.410))

dev=pdf("g9_comm_BP.pdf", height=17, width=21)
par(cex.axis=2)
par(mar=c(25,6,1,1)+.1)
p_ylim=c(0,1.1);

col_par_box <- rgb(1, 153/255, 153/255, 1)
col_comm_box <- rgb(102/255, 178/255, 1, 1)


col_boxes = c(col_par_box,rep.int("white",9),col_comm_box,rep.int("white",2))

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
text(x=c(1:13), y=rep.int(0.05,13), cex=2, labels=c("0%","63%","33%","13%","67%","20%","30%","80%", "100%", "90%", "93%", "47%", "30%"))
text(x = seq(-0.2,11.8,by=1), par("usr")[3] - 0.2, labels = lablist, srt = 45, adj= 2, pos = 1, xpd = TRUE, cex=2)

x <- c(0:14)
lines(x, rep.int(mean(par), 15), col="red", lwd=3, lty=2)
lines(x, rep.int(mean(com11_100_v2), 15), col="blue", lwd=3, , lty=2)

legend(	'topright', 
			c("Parallel (no communication) mean", "100% Cyclic communication 1 to 1 mean"), 
			lty=2, lwd=4,
			col=c("red", "blue"), 
			bty='n', # box type around legend
			pch = c(NA, NA),
			cex=2)

mtext("Communication strategy", side=1, line=22, cex=2.5)
mtext("Time (seconds)", side=2, line=4, cex=2.5)
dev.off()

