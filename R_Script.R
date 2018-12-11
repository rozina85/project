
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
t.test(as.integer(dfschool$X2012.2013.ENVIRONMENT.CATEGORY.SCORE),as.integer(dfschool$X2012.2013.OVERALL.SCORE),alternative="two.sided")

dfschool.lm<-lm(X2012.2013.PERFORMANCE.CATEGORY.SCORE ~ X2012.2013.OVERALL.SCORE, data=dfschool)
summary(dfschool.lm)
plot(X2012.2013.PERFORMANCE.CATEGORY.SCORE ~ X2012.2013.OVERALL.SCORE, data=dfschool)
abline(coef(dfschool.lm))

grades.aov<-aov(X2012.2013.PERFORMANCE.CATEGORY.SCORE~X2012.2013.PROGRESS.GRADE, data=dfschool)
summary(grades.aov)
model.tables(grades.aov,"means")
posthoc<-TukeyHSD(grades.aov)
posthoc
plot(posthoc)

