load("./baseCONS.RData")

paste(colnames(base_5EF),collapse="+")

model1<- lme(notamt~1+sexo,
             data=base_5EF,
             method="ML",
             random=~1|ID_ESCOLA)
summary(model1)

model2<- lme(notamt~1+sexo+percep,
             data=base_5EF,
             method="ML",
             random=~1|ID_ESCOLA)
summary(model2)

anova(model1,model2)

model3<- lme(notamt~1+sexo+percep+incentivo,
             data=base_5EF,
             method="ML",
             random=~1|ID_ESCOLA)
summary(model3)

anova(model2,model3)

model4<- lme(notamt~1+sexo+percep+incentivo+desvidade,
             data=base_5EF,
             method="ML",
             random=~1|ID_ESCOLA)
summary(model4)

anova(model3,model4)

model5<- lme(notamt~1+sexo+percep+incentivo+desvidade+formpais,
             data=base_5EF,
             method="ML",
             random=~1|ID_ESCOLA)
summary(model5)

anova(model4,model5)

model6<- lme(notalp~1+sexo+percep+incentivo+desvidade+formpais+LOC,
             data=base_5EF,
             method="ML",
             random=~1|ID_ESCOLA)
summary(model6)

anova(model5,model6)

model7<- lme(notamt~1+sexo+percep+incentivo+desvidade+formpais+LOC+DEPENDENCIA_ADM,
             data=base_5EF,
             method="ML",
             random=~1|ID_ESCOLA)
summary(model7)

anova(model6,model7)

model8<- lme(notamt~1+sexo+percep+incentivo+desvidade+formpais+LOC+DEPENDENCIA_ADM+NIVELSOC,
             data=base_5EF,
             method="ML",
             random=~1|ID_ESCOLA)
summary(model8)

anova(model7,model8)

model9<- lme(notamt~1+sexo+percep+incentivo+desvidade+formpais+LOC+DEPENDENCIA_ADM+NIVELSOC+VCONSERV,
             data=base_5EF,
             method="ML",
             random=~1|ID_ESCOLA)
summary(model9)

anova(model8,model9)

model10<- lme(notamt~1+sexo+percep+incentivo+desvidade+formpais+LOC+DEPENDENCIA_ADM+NIVELSOC+VCONSERV+PROJETO,
             data=base_5EF,
             method="ML",
             random=~1|ID_ESCOLA)
summary(model10)

anova(model9,model10)



model11<- lme(notamt~1+sexo+percep+incentivo+desvidade+formpais+LOC+DEPENDENCIA_ADM+NIVELSOC+VCONSERV+INVDIR_5EF,
              data=base_5EF,
              method="ML",
              random=~1|ID_ESCOLA)
summary(model11)

anova(model9,model11)

model12<- lme(notamt~1+sexo+percep+incentivo+desvidade+formpais+LOC+DEPENDENCIA_ADM+NIVELSOC+VCONSERV+INVDIR_5EF,
              data=base_5EF,
              method="ML",
              random=~1+sexo+desvidade|ID_ESCOLA)
summary(model12)

anova(model11,model12)