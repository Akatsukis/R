corr <- function(directory, threshold=0)
{
    dat<-vector()
    full_files <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
    for(i in 1:332){
        cur<-read.csv(full_files[i])
        z<-!is.na(cur[2])&!is.na(cur[3])
        if(sum(z)>threshold){
            dat<-append(dat, cor(cur[2][z], cur[3][z]))
        }
    }
    dat
}
