% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/salary.R
\name{salary}
\alias{salary}
\title{Estimated salary model}
\usage{
salary(input)
}
\arguments{
\item{input}{data passed on as \code{newdata} to \code{\link{predict}}}
}
\description{
Simple model with two predictor \code{Age} (value between 18 and 60) and
\code{Gender}("MALE", 'FEMALE").
}
\examples{
mydata <- data.frame(
   Age=c(24, 50),
   Gender=c("Male", "Female")
)
salary(mydata)
}
