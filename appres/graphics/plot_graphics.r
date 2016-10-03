plot_graphics <- function(y_par, y1, y2, y3, y_min, y_max, vec_solvers_colors1, vec_solvers_colors2, vec_solvers_colors3, label1, label2, label3){
x <- c(1:30)

col_par <- "black"
grn_1 <- rgb(102/255, 0, 204/255, 1)#rgb(0, 70/255, 25/255, 1)
grn_2 <- rgb(0, 153/255, 76/255, 1)#rgb(0, 160/255, 30/255, 1)
grn_3 <- rgb(0, 1, 1, 1)#rgb(150/255, 255/255, 153/255, 1)

p_ylim=c(y_min,y_max)
par(mar=c(4,5,1,1)+.1)

plot.new(); 
plot.window(xlim=c(0,31),ylim=p_ylim )

lines(x, y_par, col=col_par, lwd=4)

lines(x, y1, col=grn_1, lwd=3)
lines(x, rep.int(mean(y1), 30), col=grn_1, lwd=3, , lty=2)

lines(x, y2, col=grn_2, lwd=3)
lines(x, rep.int(mean(y2), 30), col=grn_2, lwd=3, , lty=2)

lines(x, y3, col=grn_3, lwd=3)
lines(x, rep.int(mean(y3), 30), col=grn_3, lwd=3, , lty=2)

lines(x, y_par, col=col_par, lwd=4)
lines(x, rep.int(0.593, 30), col=col_par, lwd=3, , lty=2)

par(new=TRUE)

plot(x, y1,
	  xlim=c(0,31), ylim=p_ylim,
     col=vec_solvers_colors1,
     pch = 15, #tipo de figura del punto 
     cex = 1.5, #tamaño del punto
	  cex.lab=1.7,
     cex.axis=1.7,
     xlab= "Runs", #NA, 
     ylab= "Time (sencods)", #NA, 
     axes=T, #xaxt="n", #yaxt="n", #frame.plot="TRUE", #bty="n"
    );


par(new=TRUE)

plot(x, y2,
	  xlim=c(0,31), ylim=p_ylim,
     col=vec_solvers_colors2,
     pch = 16, #tipo de figura del punto 
     cex = 1.5, #tamaño del punto
	  cex.lab=1.7,
     cex.axis=1.7,
     xlab= "Runs", #NA, 
     ylab= "Time (sencods)", #NA, 
     axes=T, #xaxt="n", #yaxt="n", #frame.plot="TRUE", #bty="n"
    );


par(new=TRUE)

plot(x, y3,
	  xlim=c(0,31), ylim=p_ylim,
     col=vec_solvers_colors3,
     pch = 17, #tipo de figura del punto 
     cex = 1.5, #tamaño del punto
	  cex.lab=1.7,
     cex.axis=1.7,
     xlab= "Runs", #NA, 
     ylab= "Time (sencods)", #NA, 
     axes=T, #xaxt="n", #yaxt="n", #frame.plot="TRUE", #bty="n"
    );

legend(	'topright', 
			c("Parallel (no communication)", 
			label1, 
			label2, 	
			label3), 
			lty=1, lwd=4, 
			col=c(col_par, grn_1, grn_2, grn_3), 
			bty='n', # box type around legend
			pch = c(NA, 15, 16, 17),
			cex=1.5)

#dev.copy2pdf(file=imageName)
}
