# Finding a functon to represent your data


library(MASS)

# Graphically/plotting 


# Note: properties of data smaple vs the parameters of the distribution
normal1 = rnorm(1000)   
normal2 = rnorm(1000)
# both normal1 and normal2 have mu=0 and delta=1?
qqplot(normal1,normal2)



# use statistical tests (hypothesis) 

# k test
ks.test(normal1,normal2)

# get some network ping data into a R data frame 
pingdata = read.table("http://www.eecs.qmul.ac.uk/~steve/ecs724/R-data/ping-1000")
# displace the summary stats for the ping data
summary(pingdata$V1)
hist(pingdata$V1)

# define a trim function that drops the largest 5%
trim <- function(x,prop=.05) {
  trimx <- x[x < quantile(x,prob=(1-prop))]
  return(trimx)
}

# drop the top 5% of the ping data
trim.pingdata = trim(pingdata$V1)
hist(trim.pingdata)
summary(trim.pingdata)
plot(density.default(pingdata$V1))
plot(density.default(trim.pingdata))

# try match the ping data to a normal dist with the same mu and sd
normal = rnorm(1000, mean(pingdata$V1), sd(pingdata$V1))
hist(normal)
plot(ecdf(normal))
qqplot(pingdata$V1,normal)


# try match the pring data to a poisson dist
x.poisson = rpois(1000,lambda=mean(pingdata$V1))
hist(x.poisson)
plot(ecdf(x.poisson))
qqplot(pingdata$V1,x.poisson)

# try match the pring data to a gamma dist
x.gamma = rgamma(1000,25.8, 0.37)
hist(x.gamma)
plot(ecdf(x.gamma))
qqplot(pingdata$V1,x.gamma)

# try match the pring data to a weibull dist
x.weibull = rweibull(1000,2.8,75.7)
hist(x.gamma)
plot(ecdf(x.weibull))
qqplot(pingdata$V1,x.weibull)

plot.ccdf(normal)


# MOMENT ESTIMATION
# maximum likelihood estimation  -- exhaustive search through the distribution parameters
# solution space 


# KS test: 
# Kolmogorov-Smirnov 






