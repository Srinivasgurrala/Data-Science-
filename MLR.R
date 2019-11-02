
tc<-Toyoto_Corrola[,3:11]

#Scatter Plot Matrix:
  pairs(tc)
#Correlation Matrix:
  cor(tc)
#Regression Model and Summary
model.car<-lm(Price~.,data = tc[,-7])
summary(model.car)
car::vif(model.car)
#Diagnostic Plots:  Residual Plots, QQ-Plos, Std. Residuals vs Fitted
plot(model.car) 
#Residuals vs Regressors
residualPlots(model.car,tests=F)
#Added Variable Plots
avPlots(model.car)
#QQ plots of studentized residuals
qqPlot(model.car)
#Deletion Diagnostics
influenceIndexPlot(model.car)    # Index Plots of the influence measures

#Removing 81st observarion
tc1<-tc[-81,]


