

#  Pose a conjecture 
# H0 -> the null -> reject or accept based on the test and confidence level
# Ha -> the alternate -> what we want to try and prove

# craft the H0 such the data is very unlikely relative to H0.
# 
# fitting distributions -> use hypothesis testing to confirm
# if singnificance level -> alpha > p-value, then reject H0

# ERRORS - non-0 prob of making mistakes
# Type I  (alpha)  incorrectly rejecting the null  (H0) -> False Positive
# Type II (beta) incorrectly failing to reject H0 ->  False Negative (Falsely accept H0)
# care more about FP than FN, FN generally indicate reframing H0

# trade-off between FP and FN -> add cost for each, TPR vs FPR

## POWER of a test -> P(correctly rejects H0 | H0 is false) => 1-beta
# factors that effect power:
# - the statistical 
# significance criterion: prior statement of P(Type 1 error / FP)
# to increase the power use a larger significatce criterion
# Power and Sample Size
# adding more data should improve

# 1-alpha => confidence level (CL)

# Chi-Squared distribution - test
# How variable is the gaussian
# as degrees of freedom increases then Chi -> Gaussian
# Chi Sqd. test
# - split data into K categories 
# Chi SQ = sum((observed-expected)^2/Expected)  which is ~ p-value
# 

o <- c(13,17,20,18,6,5)
n <- 5
y <- 0:n
p1 <- 0.4
e1 <- sum(o)*dbinom(y,n,p1)
barplot(e1)
chissq1 <- sum((o-e1)^2/e1)
chissq1
1 - pchisq(chissq1,n-1)

# the data has more dispertion than binomial 
# F-test
# KS test











