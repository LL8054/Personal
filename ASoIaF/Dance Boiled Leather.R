dance <- scan("Dance.txt", what="char", sep="", quote = "")
boiled <- grep("*boiled*", dance)
leather <- grep("*leather*", dance)
aa <- list()

for (i in 1:length(boiled)) {
    a <- paste(dance[(boiled[i]-2):(boiled[i]+2)])
    aa[i] <- toString(a)
}

aa <- gsub(",", "", aa)
table(grepl("boiled.leather",aa))
