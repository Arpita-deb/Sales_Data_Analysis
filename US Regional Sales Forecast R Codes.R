#######################################################################
# This file loads daily average sales revenue data from 31-05-2018 to 31-12-2020
# We'll use the data to forecast the next year's average revenue per month.
#
# Created by Arpita Deb 27/03/2024
# Using reference: https://www.youtube.com/watch?v=dBNy_A6Zpcc
#######################################################################

# Clearing all objects in R work space
rm(list = ls())


# Loading the Forecasting package
install.packages('fpp2')
library(fpp2)

# Loading the data
data <- read.csv("/Users/Dell/Desktop/US Regional Sales Data Copy/sales_data.csv")


# Declaring this as time series data
# The ts() routine takes the second column of our data (revenue) and changes it into a time series object.
# Setting the frequency to 12 makes it a monthly data
Y <- ts(data[,2], start=c(2018,5), end = c(2020,12),frequency = 12)


#######################################################################
# Preliminary analysis
#######################################################################
# Time Plot

autoplot(Y) +
  ggtitle("Time Plot: US Regional Sales per month from May 2018 to December 2020")+
  ylab("Dollars")

# Data have weak trend, as sales tend increase in the mid year and end of the year and drop in October 

# Investigating transformations.
# Taking the first difference of the data to remove the trend.
DY <- diff(Y)

# Time Plot of differenced data
autoplot(DY) +
  ggtitle("Time Plot: Differenced data")+
  ylab("Dollars")

# Series appears trend stationary. Use to investigate seasonality.

ggseasonplot(DY) +
  ggtitle("Seasonal Plot: Change in daily sales")+
  ylab("Dollars")

ggsubseriesplot(DY)

# Series Y has both weak trend and seasonality.
# To remove the trend, we took the first difference.
# The first difference series still has seasonality.

#######################################################################
# Forecasting with various models
#######################################################################

###############
# Using a benchmark method to forecast.
# We'll use Seasonal Naive Method as our benchmark model.
# A seasonal naive method, y_t = y_(t-s) +e_t
###############

fit <- snaive(DY)   # residuals sd = 4977.4762
print(summary(fit)) # p-value = 0.2573
checkresiduals(fit)


################
# Fit ETS(Exponential Smoothing) model
################

fit_ets <- ets(Y)       # residuals sd = 3027.631
print(summary(fit_ets)) # p-value = 0.9855
checkresiduals((fit_ets))


################
# Fit an ARIMA model
################

fit_arima <- auto.arima(Y, d=1,D=1, stepwise = FALSE, approximation=FALSE, trace=TRUE) # to remove trend and seasonality
print(summary(fit_arima)) # residual = 4526.758  p-value = 0.4304
checkresiduals((fit_arima))


###########################################
# To have a good prediction model, we need a low standard deviation and low p-value from the Ljung-Box test.
# But higher standard deviation and p-values for all the model suggest that the data shows no significant autocorrelation and can be considered as random.
# Again, the ACF plot shows that the residuals fall below the confidence interval line, further supporting the claim.
# While simpler models may have lower deviation or p-values compared to the ARIMA model, its consideration of the Moving Average terms and Seasonality makes it a better choice for capturing the underlying patterns in our data.
# Therefore, we choose ARIMA model for forecasting.
###########################################

###########################################
# Making the forecasts using ARIMA model
###########################################
fcst <- forecast(fit_arima,h=12)
fcst
autoplot(fcst, main = 'Forecasts of monthly revenue for 2021', ylab = "Dollars")