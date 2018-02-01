library(here)

## deja vu from yesterday!

## create a data frame of your installed packages
pkg <- as.data.frame(installed.packages())

## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built
pkg <- pkg[, c("Package", "LibPath", "Version", "Priority", "Built")]

## write it to data/installed-packages.csv
## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like
write.csv(pkg, file=here("data", "installed-packages.csv"),
          quote = FALSE, row.names = FALSE)

## when this script works, stage & commit it and the csv file
## PUSH!
