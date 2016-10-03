sec=c(1.300,1.520,1.130,0.320,0.160,1.370,0.340,0.820,0.860,2.360,1.680,0.500,0.230,1.020,1.800,0.240,0.600,0.030,4.200,2.640,0.870,1.340,2.700,0.600,2.380,0.360,0.720,3.760,0.610,1.260)
best=c(0.130,0.520,0.170,0.870,0.080,0.340,0.470,0.300,0.280,0.090,0.310,0.040,0.180,0.080,0.460,0.550,0.160,1.580,0.170,0.100,1.040,0.190,0.640,0.350,0.110,0.140,3.760,0.080,0.460,0.080)
first=c(0.310,0.290,0.150,0.110,0.310,0.180,0.160,0.340,0.160,0.600,0.130,0.120,0.130,0.120,0.110,0.150,0.640,0.230,0.370,0.100,0.130,0.320,0.490,0.160,0.290,0.170,0.150,0.110,0.320,0.310)

data<-data.frame(sec,best,first)

dev=pdf("g5_select_BP.pdf", height=17, width=21)
par(cex.axis=2)
par(mar=c(10,6,1,1)+.1)
p_ylim=c(0,2.65);

col_par_box <- rgb(1, 153/255, 153/255, 1)
col_comm_box <- rgb(102/255, 178/255, 1, 1)


col_boxes = c(col_par_box, "white" , col_comm_box)

lablist.y<-as.vector(c("Sequential", "Parallel best improvement selection", "Parallel first improvement selection"))
boxplot(data, las = 2, names = c("", "", ""), cex = 2, ylim=p_ylim, col=col_boxes)

text(x = seq(1, 3, by=1), par("usr")[3] - 0.1, labels = lablist.y, srt = 0, pos = 1, xpd = TRUE, cex=2)

#			text(x=c(1:3), y=rep.int(0.05,3), cex=1.5, labels=c("0%","63%","33%","13%","67%","20%","30%","80%", "100%", "90%", "93%", "47%", "30%"))

x <- c(0:4)
lines(x, rep.int(mean(sec), 5), col="red", lwd=3, lty=2)
lines(x, rep.int(mean(first), 5), col="blue", lwd=3, , lty=2)

legend(	'topright', 
			c("Sequential mean", "Parallel fisrt improvement mean"), 
			lty=2, lwd=4,
			col=c("red", "blue"), 
			bty='n', # box type around legend
			pch = c(NA, NA),
			cex=2)

mtext("Solver strategy", side=1, line=7, cex=2.5)
mtext("Time (seconds)", side=2, line=4, cex=2.5)
dev.off()

