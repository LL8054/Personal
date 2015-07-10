calctime <- function(name,x,time) {
    
    if (name[1] == "ethan") {y = "2.28.2011"}
    if (name[1] == "noah") {y = "11.10.2012"}
    if (name[1] == "daniel") {y = "2.5.2014"}
    
    if (time[1] == "weeks") {
        difference <- difftime(strptime(x, format = "%m.%d.%Y"), strptime(y, format = "%m.%d.%Y"),units=time)
    }
    
    if (time[1] == "months") {
        difference <- ((as.yearmon(strptime(x, format = "%m.%d.%Y"))-as.yearmon(strptime(y, format = "%m.%d.%Y")))*12)
    difference
    }
    
    if (time[1] == "quarters") {
        difference <- (as.yearqtr(strptime(x, format = "%m.%d.%Y"))- as.yearqtr(strptime(y, format = "%m.%d.%Y")))*4
    }
    
    
    if (time[1] == "years") {
        difference <- (as.yearmon(strptime(x, format = "%m.%d.%Y"))-as.yearmon(strptime(y, format = "%m.%d.%Y")))
        
    }
    difference
}

