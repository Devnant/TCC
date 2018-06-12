load("./best.RData")

summary(bestLP_5EF)
errolp5<-resid(bestLP_5EF)
qqnorm(errolp5, main="QQ-plot - Português 5° Ano")

summary(bestMT_5EF)
erromt5<-resid(bestMT_5EF)
qqnorm(erromt5, main="QQ-plot - Matemática 5° Ano")

summary(bestLP_9EF)
errolp9<-resid(bestLP_9EF)
qqnorm(errolp9, main="QQ-plot - Português 9° Ano")

summary(bestMT_9EF)
erromt9<-resid(bestMT_9EF)
qqnorm(erromt9, main="QQ-plot - Matemática 9° Ano")

rsquared(bestLP_5EF)
rsquared(bestMT_5EF)
rsquared(bestLP_9EF)
rsquared(bestMT_9EF)