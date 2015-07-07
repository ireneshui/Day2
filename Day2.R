library(dplyr)
gd_url <- "http://tiny.cc/gapminder"
gdf <- read.delim(file = gd_url)
head(gdf)
head(gdf,n=3)
str(gdf)
summary(gdf)
quantile(gdf$pop,na.rm=TRUE)
quantile(gdf$pop,na.rm=TRUE,probs=c(0.5,0.75,0.9))
table(gdf$continent,useNA="ifany")
sum(is.na(gdf))
any(is.na(gdf$pop))
all(is.na(gdf$pop))
gdf$country[gdf$continent=="Americas"]

fileUrl = "ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/technical/working/20130606_sample_info/20130606_sample_info.xlsx"

library(downloader)
download(fileUrl,destfile="1000genomes.xlsx")

library(readxl)
# Have to skip one row because 
# there is an extra header
kg = read_excel("1000genomes.xlsx",
                sheet=4,skip=1)
strsplit(names(kg)," ")

strsplit(names(kg)[6]," ")
gsub(" ", "", names(kg))
x = gsub(" ", "", names(kg))
substr(x,1,10)
tolower(substr(x,1,10))
library(googlesheets)
install.packages("dplyr")
library(dplyr)
library(dplyr)
gd_url <- "http://tiny.cc/gapminder"
gdf <- read.delim(file = gd_url)
head(gdf)
str(gdf)
gtbl <- tbl_df(gdf)
gtbl
glimpse(gtbl)
filter(gtbl, lifeExp < 29)
filter(gtbl, country == "Rwanda")
select(gtbl,country,pop,continent)
arrange(gtbl,pop)
arrange(gtbl,desc(pop))
