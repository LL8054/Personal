feast <- scan("Feast.txt", what="char", sep="", quote = "")
boiled <- grep("*boiled*", feast)
leather <- grep("*leather*", feast)
aa <- list()

for (i in 1:length(boiled)) {
    a <- paste(feast[(boiled[i]-2):(boiled[i]+2)])
    aa[i] <- toString(a)
}

aa <- gsub(",", "", aa)
table(grepl("boiled.leather",aa))
