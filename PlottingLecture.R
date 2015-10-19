# This package contains data sets used as examples in the book "R in a Nutshell" from O'Reilly Media.
# For more information on this book, see http://shop.oreilly.com/product/0636920022008.do

library(nutshell)


# SCATTER PLOTS
# load some batting data - This data frame contains information on all 1384 players who 
# had at least one plate appearance in MLB in 2008.
data(batting.2008)
# view the correlation between players H, R, SO, BB, HR (Hit Rate)
pairs(batting.2008[batting.2008$AB>100, c("H","R","SO","BB","HR")])
# the pairs plots 2 RV in scatter plot
# the scatter plot provides insight into: Correlation, Disperation and the range of the RVs

# TIME SERIIES
# load turkey price data
data(turkey.price.ts)
# plot and observe seasonaility 
plot(turkey.price.ts)
# Insight into:
#  Noise vs. signal
#  Trends
#  Model that fits the data (stochastic vs. deterministic)

# BAR CHARTS

data(doctorates)
doctorates.m<-as.matrix(doctorates[2:7])
rownames(doctorates.m) <- doctorates[,1]
doctorates.m
barplot(doctorates.m)
barplot(doctorates.m,beside=TRUE,horiz=TRUE, legend=TRUE,cex.names=0.75)



