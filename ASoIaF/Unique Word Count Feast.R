word <- "nuncle"

game <- scan("Game.txt", what="char", sep="", quote = "")
clash <- scan("Clash.txt", what="char", sep="", quote = "")
feast <- scan("Feast.txt", what="char", sep="", quote = "")
storm <- scan("Storm.txt", what="char", sep="", quote = "")
dance <- scan("Dance.txt", what="char", sep="", quote = "")

game <- tolower(game)
game.words <- strsplit(game, "\\W+", perl=TRUE) #separate words based on white space
game.words.vector <- unlist(game.words) #turn data into vector from list
clash <- tolower(clash)
clash.words <- strsplit(clash, "\\W+", perl=TRUE) 
clash.words.vector <- unlist(clash.words) 
feast <- tolower(feast)
feast.words <- strsplit(feast, "\\W+", perl=TRUE) 
feast.words.vector <- unlist(feast.words) 
storm <- tolower(storm)
storm.words <- strsplit(storm, "\\W+", perl=TRUE) 
storm.words.vector <- unlist(storm.words) 
dance <- tolower(dance)
dance.words <- strsplit(dance, "\\W+", perl=TRUE) 
dance.words.vector <- unlist(dance.words) 

length(grep(word, game.words.vector))
length(grep(word, clash.words.vector))
length(grep(word, feast.words.vector))
length(grep(word, storm.words.vector))
length(grep(word, dance.words.vector))

game.sorted <- sort(table(game.words.vector), decreasing=TRUE)
clash.sorted <- sort(table(clash.words.vector), decreasing=TRUE)
feast.sorted <- sort(table(feast.words.vector), decreasing=TRUE)
storm.sorted <- sort(table(storm.words.vector), decreasing=TRUE)
dance.sorted <- sort(table(dance.words.vector), decreasing=TRUE)
                     
