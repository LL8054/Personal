
Game <- scan("Game.txt", what="char", sep="", quote = "")
Clash <- scan("Clash.txt", what="char", sep="", quote = "")
Feast <- scan("Feast.txt", what="char", sep="", quote = "")
Storm <- scan("Storm.txt", what="char", sep="", quote = "")
Dance <- scan("Dance.txt", what="char", sep="", quote = "")

Lengths <- character(length = 5)
Lengths[1] <- paste("Game is ", length(Game), "words.")
Lengths[2] <- paste("Clash is ", length(Clash), "words.")
Lengths[3] <- paste("Feast is ", length(Feast), "words.")
Lengths[4] <- paste("Storm is ", length(Storm), "words.")
Lengths[5] <- paste("Dance is ", length(Dance), "words.")

Lengths