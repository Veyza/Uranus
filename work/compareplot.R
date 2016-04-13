comparison <- function(dat1, dat2, dat3) {
	inp1 <- read.fwf(dat1, c(5, 3, 13, 19, 12), skip = 8)
	inp2 <- read.fwf(dat2, c(5, 3, 13, 19, 12), skip = 8)
	inp3 <- read.fwf(dat3, c(5, 3, 13, 19, 12), skip = 8)

	t <- inp1$V1 + inp1$V2 / 12 + inp1$V3 / 365

	dra <- (inp1$V4 - inp2$V4) * 15 * 36e+5
	ddec <- (inp1$V5 - inp2$V5) * 36e+5
	png("./Oberon_Lainey-Emelyanov_RA.png", width = 1500, height = 500)
		plot(cbind(t,dra), main = "Oberon, Lainey-Emelyanov, RA", type = "l", xlab = "year", ylab = "mas")
	dev.off()
	png("./Oberon_Lainey-Emelyanov_DEC", width = 1500, height = 500)
		plot(cbind(t, ddec), main = "Oberon, Lainey-Emelyanov, DEC", type = "l", xlab = "year", ylab = "mas")
	dev.off()

	dra <- (inp2$V4 - inp3$V4) * 15 * 36e+5
	ddec <- (inp2$V5 - inp3$V5) * 36e+5
	png("./Oberon_Emelyanov-Laskar_RA.png", width = 1500, height = 500)
		plot(cbind(t,dra), main = "Oberon, Emelyanov-Laskar, RA", type = "l", xlab = "year", ylab = "mas")
	dev.off()
	png("./Oberon_Emelyanov-Laskar_DEC", width = 1500, height = 500)
		plot(cbind(t, ddec), main = "Oberon, Emelyanov-Laskar, DEC", type = "l", xlab = "year", ylab = "mas")
	dev.off()

	dra <- (inp3$V4 - inp1$V4) * 15 * 36e+5
	ddec <- (inp3$V5 - inp1$V5) * 36e+5
	png("./Oberon_Laskar-Lainey_RA.png", width = 1500, height = 500)
		plot(cbind(t,dra), main = "Oberon, Laskar-Lainey, RA", type = "l", xlab = "year", ylab = "mas")
	dev.off()
	png("./Oberon_Laskar-Lainey_DEC", width = 1500, height = 500)
		plot(cbind(t, ddec), main = "Oberon, Laskar-Lainey, DEC", type = "l", xlab = "year", ylab = "mas")
	dev.off()


	}