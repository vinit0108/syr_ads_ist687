randomSample <- factor(rbinom(n=80, size=1, prob=0.5), labels = c("red","blue"))
randomSample
barplot(table(randomSample))

set.seed(2)
sampleSize <- 30
studentpop <- rnorm(2000, mean=20, sd=3)
undergrads <- sample(studentpop, size=sampleSize, replace = TRUE)
grads <- rnorm(sampleSize, mean=25, sd=3)
if(runif(1)>0.5){
  testSample <- grads
}else{
  testSample <- undergrads
}

sample(undergrads, size=10, replace = TRUE)

sample(undergrads, size=10, replace = TRUE)

replicate(3, mean(sample(undergrads, size=10, replace = TRUE)))

undergrad_dist <- replicate(100, mean(sample(undergrads, size=10, replace = TRUE)))
mean(testSample)
quantile(undergrad_dist, probs=c(0.025, 0.975))
if(mean(testSample) < 17.96871 | mean(testSample)>20.71672 ){
  print("Sample mean is extreme")
}else{
  print("Sample mean is not extreme")
}