Clash <- scan("Clash.txt", what="char", sep="", quote = "")
boiled <- grep("*boiled*", Clash)
leather <- grep("*leather*", Clash)
aa <- list()

for (i in 1:length(boiled)) {
    a <- paste(Clash[(boiled[i]-2):(boiled[i]+2)])
    aa[i] <- toString(a)
}

aa <- gsub(",", "", aa)
table(grepl("boiled.leather",aa))
