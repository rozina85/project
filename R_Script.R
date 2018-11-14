
dfschool<-read.csv(file.path("/Users/vladimirprenga/Desktop/schools\ report\ progress.csv"))
dfschool[dfschool$X2012.2013.OVERALL.SCORE=='.',] <-"N/A"
dfschool[dfschool$X2012.2013.OVERALL.SCORE=='.',] <-NA

skewness(school$X2012.2013.PROGRESS.CATEGORY.SCORE,na.rm = TRUE)
kurtosis(school$X2012.2013.PROGRESS.CATEGORY.SCORE,na.rm = TRUE)
mean(school$X2012.2013.OVERALL.SCORE,na.rm = TRUE)
mean(school$X2012.13.OVERALL.PERCENTILE,na.rm = TRUE)
mean(school$X2012.2013.PROGRESS.CATEGORY.SCORE,na.rm = TRUE)
var(school$X2012.2013.OVERALL.SCORE,na.rm = TRUE)
var(school$X2012.13.OVERALL.PERCENTILE,na.rm = TRUE)
var(school$X2012.2013.PROGRESS.CATEGORY.SCORE,na.rm = TRUE)

hist(school$X2012.2013.PROGRESS.CATEGORY.SCORE,xlab = "scores")
pareto.chart(table(schools_report_progress$`2012-2013 OVERALL GRADE`))

t.test(as.integer(dfschool$X2012.2013.OVERALL.SCORE))t.test(as.integer(dfschool$X2012.2013.PROGRESS.CATEGORY.SCORE))
t.test(as.integer(dfschool$X2012.2013.PROGRESS.CATEGORY.SCORE))
t.test(as.integer(dfschool$X2012.2013.PERFORMANCE.CATEGORY.SCORE))

t.test(as.integer(dfschool$X2012.2013.PERFORMANCE.CATEGORY.SCORE),as.integer(dfschool$X2012.2013.OVERALL.SCORE),alternative="two.sided")
t.test(as.integer(dfschool$X2012.2013.PERFORMANCE.CATEGORY.SCORE),as.integer(dfschool$X2012.2013.OVERALL.SCORE),alternative="two.sided")
t.test(as.integer(dfschool$X2012.2013.ENVIRONMENT.CATEGORY.SCORE),as.integer(dfschool$X2012.2013.OVERALL.SCORE),alternative="two.sided")



