table()
prop.table()

a <- seq(min(my_data), max(my_data), length = 100)    # define range of values spanning the dataset
cdf_function <- function(x) {    # computes prob. for a single value
  mean(my_data <= x)
}
cdf_values <- sapply(a, cdf_function)
plot(a, cdf_values)

pnorm(a, avg, s) #pnorm; F(a) value
qnorm(p, mu, sigma) #qnorm; F(a) = p인 a value


quantile(data, q) 

p <- deq(0.01, 0.99, 0.01) #making percentile
quantile(data, p)

summary()

# calculate observed and theoretical quantiles
p <- seq(0.05, 0.95, 0.05)
observed_quantiles <- quantile(data, p)
theoretical_quantiles <- qnorm(p, mean = mean(data), sd = sd(data))

# make QQ-plot
plot(theoretical_quantiles, observed_quantiles)
abline(0,1)

