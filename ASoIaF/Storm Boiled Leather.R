storm <- scan("Storm.txt", what="char", sep="", quote = "")
boiled <- grep("*boiled*", storm)
leather <- grep("*leather*", storm)
aa <- list()

for (i in 1:length(boiled)) {
    a <- paste(storm[(boiled[i]-2):(boiled[i]+2)])
    aa[i] <- toString(a)
}

aa <- gsub(",", "", aa)
table(grepl("boiled.leather",aa))
