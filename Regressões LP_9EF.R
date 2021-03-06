load("./baseCONS.RData")

paste(colnames(base_9EF),collapse="+")

model1<- lme(notalp~1+sexo,
             data=base_9EF,
             method="ML",
             random=~1|ID_ESCOLA)
summary(model1)

model2<- lme(notalp~1+sexo+percep,
             data=base_9EF,
             method="ML",
             random=~1|ID_ESCOLA)
summary(model2)

anova(model1,model2)

model3<- lme(notalp~1+sexo+percep+incentivo,
             data=base_9EF,
             method="ML",
             random=~1|ID_ESCOLA)
summary(model3)

anova(model2,model3)

model4<- lme(notalp~1+sexo+percep+incentivo+desvidade,
             data=base_9EF,
             method="ML",
             random=~1|ID_ESCOLA)
summary(model4)

anova(model3,model4)

model5<- lme(notalp~1+sexo+percep+incentivo+desvidade+formpais,
             data=base_9EF,
             method="ML",
             random=~1|ID_ESCOLA)
summary(model5)

anova(model4,model5)

model6<- lme(notalp~1+sexo+percep+incentivo+desvidade+formpais+LOC,
             data=base_9EF,
             method="ML",
             random=~1|ID_ESCOLA)
summary(model6)

anova(model5,model6)

model7<- lme(notalp~1+sexo+percep+incentivo+desvidade+formpais+LOC+DEPENDENCIA_ADM,
             data=base_9EF,
             method="ML",
             random=~1|ID_ESCOLA)
summary(model7)

anova(model6,model7)

model8<- lme(notalp~1+sexo+percep+incentivo+desvidade+formpais+LOC+DEPENDENCIA_ADM+PC_FORMACAO_DOCENTE_FIL+NIVELSOC,
             data=base_9EF,
             method="ML",
             random=~1|ID_ESCOLA)
summary(model8)

anova(model7,model8)

model9<- lme(notalp~1+sexo+percep+incentivo+desvidade+formpais+LOC+DEPENDENCIA_ADM+PC_FORMACAO_DOCENTE_FIL+NIVELSOC+VCONSERV,
             data=base_9EF,
             method="ML",
             random=~1|ID_ESCOLA)
summary(model9)

anova(model8,model9)

model10<- lme(notalp~1+sexo+percep+incentivo+desvidade+formpais+LOC+DEPENDENCIA_ADM+PC_FORMACAO_DOCENTE_FIL+NIVELSOC+VCONSERV+PROJETO,
             data=base_9EF,
             method="ML",
             random=~1|ID_ESCOLA)
summary(model10)

anova(model9,model10)


model11<- lme(notalp~1+sexo+percep+incentivo+desvidade+formpais+LOC+DEPENDENCIA_ADM+PC_FORMACAO_DOCENTE_FIL+NIVELSOC+VCONSERV+INVDIR_9EF,
              data=base_9EF,
              method="ML",
              random=~1|ID_ESCOLA)
summary(model11)

anova(model9,model11)

model12<- lme(notalp~1+sexo+percep+incentivo+desvidade+formpais+LOC+DEPENDENCIA_ADM+PC_FORMACAO_DOCENTE_FIL+NIVELSOC+VCONSERV+PROJETO+INVDIR_9EF,
              data=base_9EF,
              method="ML",
              random=~1|ID_ESCOLA)
summary(model12)

anova(model11,model12)

model13<- lme(notalp~1+sexo+percep+incentivo+desvidade+formpais+LOC+DEPENDENCIA_ADM+PC_FORMACAO_DOCENTE_FIL+NIVELSOC+VCONSERV+PROJETO+INVDIR_9EF,
              data=base_9EF,
              method="ML",
              random=~1+sexo|ID_ESCOLA)
summary(model13)

anova(model12,model13)


model14<- lme(notalp~1+sexo+percep+incentivo+desvidade+formpais+LOC+DEPENDENCIA_ADM+PC_FORMACAO_DOCENTE_FIL+NIVELSOC+VCONSERV+PROJETO+INVDIR_9EF,
              data=base_9EF,
              method="ML",
              random=~1+desvidade+sexo|ID_ESCOLA)
summary(model14)

anova(model13,model14)

model15<- lme(notalp~1+sexo+percep+incentivo+desvidade+formpais+LOC+DEPENDENCIA_ADM+PC_FORMACAO_DOCENTE_FIL+NIVELSOC+VCONSERV+INVDIR_9EF,
              data=base_9EF,
              method="ML",
              random=~1+desvidade+sexo|ID_ESCOLA)
summary(model15)

anova(model14,model15)

bestLP_9EF<-model15
