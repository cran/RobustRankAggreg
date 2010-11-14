library(roxygen)

setwd("~/Raivo/Projects/RRA/R/Package/")

roxygenize(package.dir = "RRASource", roxygen.dir = "RobustRankAggreg", unlink.target = T, use.Rd2 = T)

## Run in terminal
cd ~/Raivo/Projects/RRA/R/Package/
R CMD check RobustRankAggreg
R CMD build RobustRankAggreg
R CMD install RobustRankAggreg_0.1.tar.gz 


# Debug, kui kisab et dokument sisaldab mitte ascii tähti
tools::showNonASCII( readLines("RobustRankAggreg/man/cellCycleKO.Rd"))

library(RobustRankAggreg)
?cellCycleKO
?aggregateRanks
?makeRankMatrix
?RobustRankAggreg
