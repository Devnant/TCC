load("./best.RData")
load("./baseCONS.RData")

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
rsquared(bestLP_9EF)
rsquared(bestMT_5EF)
rsquared(bestMT_9EF)

yajust=fitted(bestLP_5EF)
yobs=base_5EF$notalp
ymedia=mean(yobs)
dif1=(yobs-ymedia)^2
sqt=sum(dif1)
sqt
dif2=(yobs-yajust)^2
sqres=sum(dif2)
sqres
part1=((yobs-yajust)*(yajust-ymedia))
sompart1=2*sum(part1)
sompart1
part2=(yajust-ymedia)^2
sompart2=sum(part2)
sqreg=sompart1+sompart2
sqreg
rqLP5EF=sqreg/sqt
rqLP5EF

yajust=fitted(bestLP_9EF)
yobs=base_9EF$notalp
ymedia=mean(yobs)
dif1=(yobs-ymedia)^2
sqt=sum(dif1)
sqt
dif2=(yobs-yajust)^2
sqres=sum(dif2)
sqres
part1=((yobs-yajust)*(yajust-ymedia))
sompart1=2*sum(part1)
sompart1
part2=(yajust-ymedia)^2
sompart2=sum(part2)
sqreg=sompart1+sompart2
sqreg
rqLP9EF=sqreg/sqt
rqLP9EF

yajust=fitted(bestMT_5EF)
yobs=base_5EF$notamt
ymedia=mean(yobs)
dif1=(yobs-ymedia)^2
sqt=sum(dif1)
sqt
dif2=(yobs-yajust)^2
sqres=sum(dif2)
sqres
part1=((yobs-yajust)*(yajust-ymedia))
sompart1=2*sum(part1)
sompart1
part2=(yajust-ymedia)^2
sompart2=sum(part2)
sqreg=sompart1+sompart2
sqreg
rqMT5EF=sqreg/sqt
rqMT5EF

yajust=fitted(bestMT_9EF)
yobs=base_9EF$notamt
ymedia=mean(yobs)
dif1=(yobs-ymedia)^2
sqt=sum(dif1)
sqt
dif2=(yobs-yajust)^2
sqres=sum(dif2)
sqres
part1=((yobs-yajust)*(yajust-ymedia))
sompart1=2*sum(part1)
sompart1
part2=(yajust-ymedia)^2
sompart2=sum(part2)
sqreg=sompart1+sompart2
sqreg
rqMT9EF=sqreg/sqt
rqMT9EF