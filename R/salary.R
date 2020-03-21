#' Estimated salary model
#'
#' Simple model with two predictor \code{Age} (value between 18 and 60) and
#' \code{Gender}("MALE", 'FEMALE").
#'
#' @export
#' @importFrom mgcv predict.gam
#' @param input data passed on as \code{newdata} to \code{\link{predict}}
#' @examples
#' mydata <- data.frame(
#'    Age=c(24, 50),
#'    Gender=c("Male", "Female")
#' )
#' salary(mydata)

salary <- function(input){
  #input can either be csv file or data
  newdata <- if(is.character(input) && file.exists(input)){
    read.csv(input)
  } else {
    as.data.frame(input)
  }
  stopifnot("Age" %in% names(newdata))
  stopifnot("Gender" %in% names(newdata))

  newdata$Age <- as.numeric(newdata$Age)

  #tv_model is included with the package
  newdata$salary <- as.vector(predict.gam(salary_model, newdata = newdata))
  return(newdata)
}

