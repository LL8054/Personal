setwd("~/datasciencecoursera/Personal")

library("XLConnect")
library("dplyr")
library("tidyr")
library("xlsx")

wb <- XLConnect::loadWorkbook("gradespopsrally.xlsx")
rawdata <- readWorksheet(wb, sheet = "gradespopsrally")

#create name key
namekey <- subset(rawdata, select = c(Student, Student.ID))
namekey <- apply(namekey, 2, function(x) gsub("^$|^ $", NA, x))
namekey <- namekey[complete.cases(namekey),]
namekey <- subset(namekey, select = -c(row.names))
rownames(namekey) <- NULL
namekey <- as.data.frame(namekey)
namekey$Student.ID <- paste(namekey$Student.ID)
namekey$Student.ID <- as.numeric(namekey$Student.ID)
namekey$Student <- as.character(namekey$Student)

#tidy the data
data <- subset(rawdata, select = -c(Student, Course.Num, Section, Period) )
testdata <- gather(data, weeks, grade, -Student.ID, -Course, -Teacher)
testdata$grade <- as.numeric(testdata$grade)
arrtestdata <- arrange(testdata, Student.ID)
spreaddata <- spread(arrtestdata, Course, grade)

names(spreaddata)[names(spreaddata) == 'FINE ARTS'] <- 'FINE.ARTS'
names(spreaddata)[names(spreaddata) == 'PHYSICAL ED'] <- 'PHYSICAL.ED'

spreaddata <- subset(spreaddata, select = -c(CITIZENSHIP, FINE.ARTS, HANDWRITING, 
                                             HEALTH, MUSIC, PHYSICAL.ED))
spreaddata$average <- apply(spreaddata[4:7], 1, mean )

newdata <- gather(spreaddata, class, grade, -Student.ID, -Teacher, -weeks)
newdata <- arrange(newdata, Student.ID, weeks)
newdata <- newdata[complete.cases(newdata),]

finaldata <- spread(newdata, class, grade)
finaldata <- subset(finaldata, select = c(Student.ID, Teacher, weeks, average))
final <- spread(finaldata, weeks, average)
final$change <- final[,4]-final[,3]
final <- final[final$change > 0,]
final <- final[complete.cases(final),]
rownames(final) <- NULL

results <- merge(namekey, final, by.x= "Student.ID")
results <- arrange(results, Teacher, change)
write.xlsx2(results, paste0(path.expand("~/Desktop/"),"PopsRallyResults.xlsx"), 
            sheetName="Sheet1", col.names=TRUE, row.names=FALSE, append=FALSE)

