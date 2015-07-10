source("calctime.R")

calcage <- function(a) {
    ages <- matrix(nrow=1, ncol=3)
    colnames(ages) <- c("Ethan", "Noah", "Daniel")
    ages[1,1] <- toString(c((calctime("ethan", a, "months")), "months"))
    ages[1,2] <- toString(c((calctime("noah", a, "months")), "months"))
    ages[1,3] <- toString(c(as.integer(calctime("daniel", a, "weeks")), "weeks"))
    for (i in 1:3) {
        ages[1,i] <- gsub(",", "", ages[1,i])
    }
    ages
    
}



