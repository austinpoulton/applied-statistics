library(TSA)
library(stats)

# load the larain data (rain fall over time) and plot it
data(larain)
plot(larain,ylab="Inches",xlab="Y ear",type='o')


# time lag -> 
plot(y=larain,x=zlag(larain),ylab="Inches", xlab="Previous Year Inches")

# seasonaility of temperature over time
data(tempdub)
plot(tempdub,ylab="temperature", type = 'o')

