weightmedian <- function(directory, day) {
        files_list <- dir(directory, full.names = TRUE) #creates a list of files
        dat <- data.frame() #creates an empty data frame
        for (i in 1:5) { #loops through the files, rbinding them together
                dat <- rbind(dat, read.csv(files_list[i]))
        }
        dat_subset <- subset(dat, dat$Day == day) #susets the rows matching the 'day' argument
        median(dat_subset$Weight, na.rm = TRUE) #identifies the median of the subset
        # while stripping out the NAs
}
