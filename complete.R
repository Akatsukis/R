complete <- function(directory, id=1:332)
{
    dat<-data.frame()
    full_files <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
    for(i in id){
        cur<-read.csv(full_files[i])
        dat<-rbind(dat, list(i, sum(!is.na(cur[2])&!is.na(cur[3]))))
    }
    names(dat)<-c("id", "nobs")
    dat
}
