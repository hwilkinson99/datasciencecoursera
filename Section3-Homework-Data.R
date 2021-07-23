#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
#Solution

#Calculate the raw profit
GrossProfit <- revenue-expenses

#Calculate the profit after tax by multiplying the whole vector by .7 (each value)
#precision is .01 so we round to 2 decimals
TaxMultiplier <- .7
ProfitAfterTax <- round((GrossProfit * TaxMultiplier),digits = 2)

#Calculate profit margin by taking profit after tax / revenue. We want the 
#precision of .01 so we round to 2 decimals
ProfitMargin <- round((ProfitAfterTax / revenue),digits = 2)

#Calc mean profit
MeanProfit <- mean(ProfitAfterTax)

#Compare each value to the mean profit
IsOutlookGood <- ProfitAfterTax > mean(MeanProfit)
IsOutlookBad <- ProfitAfterTax < mean(MeanProfit)

#What is the highest and lowest value of profit in the vectors
MaxProfit <- max(ProfitAfterTax)
MinProfit <- min(ProfitAfterTax)

#Which month had the highest and lowest value
WhichMonthHighest <- ProfitAfterTax == MaxProfit
WhichMonthLowest <- ProfitAfterTax == MinProfit

#Convert Profits to 1000s for output.
revenue <- round(revenue/1000,0)
expenses <- round(expenses/1000,0)
GrossProfit <- round(GrossProfit/1000,0)
ProfitAfterTax <- round(ProfitAfterTax/1000,0)


#Print the outputs
revenue
expenses
GrossProfit
ProfitAfterTax
ProfitMargin
IsOutlookGood
IsOutlookBad
MaxProfit
WhichMonthHighest
MinProfit
WhichMonthLowest