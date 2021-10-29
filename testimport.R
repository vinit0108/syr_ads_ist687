#install.packages("readxl")
library(readxl)
library(tidyverse)

url <- "https://www2.census.gov/programs-surveys/popest/tables/2010-2011/state/totals/nst-est2011-01.xls"
download.file(url,"tmpExcelFile.xls")

testFrame <- read_excel("tmpExcelFile.xls")

# covnerting dataframe into excel
install.packages("writexl")
library(writexl)
write_xlsx(mtcars,"tempfile.xlsx")
