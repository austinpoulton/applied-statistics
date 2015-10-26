# This package contains data sets used as examples in the book "R in a Nutshell" from O'Reilly Media.
# For more information on this book, see http://shop.oreilly.com/product/0636920022008.do

library(nutshell)
library(hh)

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


# HISTOGRAMS
batting.min.2008 <- transform(batting.2008, PA=AB+BB+HBP+SF+SH)
hist(batting.min.2008$PA)

# adjust the size of the bins 
hist(batting.min.2008[batting.min.2008$PA, "PA"])


# Excel - calc size of bin -> 
binSize = floor(sqrt(nrow(batting.min.2008)))
hist(batting.min.2008[batting.min.2008$PA>25, "PA"], breaks = binSize)
hist(batting.min.2008[batting.min.2008$PA>25, "PA"])

# lets look at the density of the data
plot(density(batting.min.2008[batting.min.2008$PA>25,"PA"]))


# DENSITY - continuous functions
# kernel -> base probability distributions that sum to provide a unique density function
# smoothing -> bandwidth
# See: https://en.wikipedia.org/wiki/Kernel_density_estimation
# and www.ssc.wisc.edu/~bhansen/718/NonParametrics1.pdf

# what does the density function return - a set of data points that match a polynomial 
# distribution function
kdef = density(batting.min.2008[batting.min.2008$PA>25,"PA"])

# Generate some psuedo-random normal data or various sizes
normal.small<-rnorm(10)
normal.medium<-rnorm(100)
normal.large<-rnorm(1000)
normal.xlarge <- rnorm(100000)
# use kde to plot the data
plot(density(normal.medium))
# large samples look/match the traditional gaussian/normal distribution
plot(density(normal.xlarge))

# BOX (and whisker) PLOTS - quantiles
batting.box.2008 <- transform(batting.2008, OBP=(H+BB+HBP)/(AB+BB+HBP+SF))
# note the indexing in the batting.box.2008 data frame
boxplot(batting.box.2008$OBP~batting.box.2008$teamID,data=batting.2008[batting.box.2008$PA>100 & batting.2008$lgID=="AL",],cex.axis=.7)

# QQ PLOT 
# comparing two probability distributions by plotting their quantiles agianst each other
# plotting y quantile against x quantile data point for x and y rv distributions
# like a scatter plot for quantiles

normal.large.dispersed <- rnorm(1000,0,2)
qqplot(normal.large,normal.large.dispersed)

# some asymmetry between the two distr
# skewed, S shaped plot.

# the qq norm plot.  Note the theoretical values are more dispersed in the lower quantiles
# according to the normal distribution.  
# the actual data is asymteric,  negatively skewed towards 
qqnorm(batting.2008$AB)

hist(batting.2008$AB, breaks= 25)









