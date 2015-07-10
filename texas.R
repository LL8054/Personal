library(XML)

download.file("http://cfbdatawarehouse.com/data/div_ia/big12/texas/2010-2014_yearly_results.php", "data.txt")
data <- readHTMLTable("data.txt")