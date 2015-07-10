game <- scan("Game.txt", what="char", sep="", quote = "")
boiled <- grep("*boiled*", game)
leather <- grep("*leather*", game)
aa <- list()

for (i in 1:length(boiled)) {
    a <- paste(game[(boiled[i]-2):(boiled[i]+2)])
    aa[i] <- toString(a)
}

aa <- gsub(",", "", aa)
table(grepl("boiled.leather",aa))
