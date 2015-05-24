complete <- function(directory, id = 1:332) {

  files <- (Sys.glob("specdata//*.csv"));
  nobs <- c();
  
  for (index in id) {
    file_data <- read.csv(files[index], sep = ",");
    complete_cases <- file_data[complete.cases(file_data),];
    nobs <- c(nobs, nrow(complete_cases));
  }
  
  return(data.frame(cbind(id, nobs)));
}
