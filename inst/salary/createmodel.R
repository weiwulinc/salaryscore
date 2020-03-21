#This script was used to create the model that is included with the package

#Udemy Machine Learning Course Dataset
#https://www.superdatascience.com/pages/machine-learning
mydata <- read.table("social_network_ads.csv", header = TRUE, sep = ',')


#GAM model
library(mgcv)
# mydata <- na.omit(GSS[c("age", "tvhours", "marital")])
salary_model <- gam(EstimatedSalary ~ s(Age, by=Gender), data = mydata)

# #Vizualize the model
# library(ggplot2)
# qplot(Age, predict(salary_model), color=Gender, geom="line", data=mydata) +
#   ggtitle("gam(EstimatedSalary ~ s(Age, by=Gender))") +
#   ylab("Average salary per year")

# Save the model
dir.create("data", showWarnings=FALSE)
save(salary_model, file="data/salary_model.rda")

