pollutantmean <- function(directory, pollutant, id=1:332)
{
    dat<-data.frame()
    full_files<- list.files(path = directory, pattern = ".csv", full.names = TRUE)
    for(i in id){
        dat<-rbind(dat, read.csv(full_files[i]))
    }
    x<-dat[pollutant]
    mean(x[!is.na(x)])
}
