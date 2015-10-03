#Write a function called best that take two arguments: the 2-character
#abbreviated name of a state and an outcome name. The function reads
#the outcome-of-care-measures.csv ﬁle and returns a character vector
#with the name of the hospital that has the best (i.e. lowest)
#30-day mortality for the speciﬁed outcome in that state


best <- function(state, outcome) {

    #vars
    data <- character()
    options <- character()

    ## Read outcome-of-care-measures.csv, assign to data
    data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    data[, 11] <- suppressWarnings(as.numeric(data[, 11]))

    #define list of possible options for heart disease.
    options <- c("heart attack", "heart failure", "pneumonia")

    ## Check that state and outcome are valid

    #if parm1 state value is not found in the data
    if(!state %in% data$State)
    {
      #print 'invalid state' error
      stop("invalid state")
    }

    #else if parm2 outcome is not from valid list of heart disease options
    else if (!(outcome %in% options))
    {
      #print 'invalid outcome' error
      stop("invalid outcome")
    }

    else
    {
      print("Passed")
    }


## Return hospital name in that state with lowest 30-day death ## rate
}
