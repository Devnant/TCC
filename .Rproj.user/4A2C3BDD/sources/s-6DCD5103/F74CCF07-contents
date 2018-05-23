load("./baseESC.RData")

# Transformar caracteres em número, da melhor, A, valendo 3, para a pior, D, valendo 0
lista=list()
for (i in 10:62) {
  dat<-as.data.frame(ifelse(ESCOLA_5EF[i]=="A",3,ifelse(ESCOLA_5EF[i]=="B",2,ifelse(ESCOLA_5EF[i]=="C",1,0))))
  lista[[i]]<-dat
}
base_5EF<-do.call(cbind,lista[10:62])
rm(dat)
rm(lista)

#Criar variável CONSERV somando linhas de perguntas relacionadas à conservação
CONSERV<-data.frame()
for (i in 1:nrow(base_5EF)){
     CONSERV[i,1]<-sum(base_5EF[i,1:43])
}
colnames(CONSERV)<-"CONSERV"
base_5EF<-cbind(base_5EF,CONSERV)
rm(CONSERV)

#Criar variável dicotômica VCONSERV
VCONSERV<-data.frame()
for (i in 1:nrow(base_5EF)){
  VCONSERV[i,1]<-ifelse(base_5EF$CONSERV[i]>=quantile(base_5EF$CONSERV,0.75),1,0)
}
colnames(VCONSERV)<-"VCONSERV"
base_5EF<-cbind(base_5EF,VCONSERV)
rm(VCONSERV)

#Criar variável SEGUR somando linhas de perguntas relacionadas à segurança
SEGUR<-data.frame()
for (i in 1:nrow(base_5EF)){
  SEGUR[i,1]<-sum(base_5EF[i,44:53])
}
colnames(SEGUR)<-"SEGUR"
base_5EF<-cbind(base_5EF,SEGUR)
rm(SEGUR)

#Criar variável dicotômica VSEGUR

VSEGUR<-data.frame()
for (i in 1:nrow(base_5EF)){
  VSEGUR[i,1]<-ifelse(base_5EF$SEGUR[i]>=quantile(base_5EF$SEGUR,0.75),1,0)
}
colnames(VSEGUR)<-"VSEGUR"
base_5EF<-cbind(base_5EF,VSEGUR)
rm(VSEGUR)

# Transformar caracteres em número, da melhor, A, valendo 3, para a pior, D, valendo 0
lista=list()
for (i in 10:62) {
  dat<-as.data.frame(ifelse(ESCOLA_9EF[i]=="A",3,ifelse(ESCOLA_9EF[i]=="B",2,ifelse(ESCOLA_9EF[i]=="C",1,0))))
  lista[[i]]<-dat
}
base_9EF<-do.call(cbind,lista[10:62])
rm(dat)
rm(lista)

#Criar variável CONSERV somando linhas de perguntas relacionadas à conservação
CONSERV<-data.frame()
for (i in 1:nrow(base_9EF)){
  CONSERV[i,1]<-sum(base_9EF[i,1:43])
}
colnames(CONSERV)<-"CONSERV"
base_9EF<-cbind(base_9EF,CONSERV)
rm(CONSERV)

#Criar variável dicotômica VCONSERV
VCONSERV<-data.frame()
for (i in 1:nrow(base_9EF)){
  VCONSERV[i,1]<-ifelse(base_9EF$CONSERV[i]>=quantile(base_9EF$CONSERV,0.75),1,0)
}
colnames(VCONSERV)<-"VCONSERV"
base_9EF<-cbind(base_9EF,VCONSERV)
rm(VCONSERV)

#Criar variável SEGUR somando linhas de perguntas relacionadas à segurança
SEGUR<-data.frame()
for (i in 1:nrow(base_9EF)){
  SEGUR[i,1]<-sum(base_9EF[i,44:53])
}
colnames(SEGUR)<-"SEGUR"
base_9EF<-cbind(base_9EF,SEGUR)
rm(SEGUR)

#Criar variável dicotômica VSEGUR

VSEGUR<-data.frame()
for (i in 1:nrow(base_9EF)){
  VSEGUR[i,1]<-ifelse(base_9EF$SEGUR[i]>=quantile(base_9EF$SEGUR,0.75),1,0)
}
colnames(VSEGUR)<-"VSEGUR"
base_9EF<-cbind(base_9EF,VSEGUR)
rm(VSEGUR)

# Criação bases de dados de escola
esc5<-cbind(ESCOLA_5EF[1:9],base_5EF[54:57])
esc9<-cbind(ESCOLA_9EF[1:9],base_9EF[54:57])

# Organizando fatores
esc5$LOC<-factor(esc5$LOC)
esc9$LOC<-factor(esc9$LOC)
esc5$NIVEL_SOCIO_ECONOMICO<-factor(esc5$NIVEL_SOCIO_ECONOMICO)
esc5$NIVEL_SOCIO_ECONOMICO<-factor(esc5$NIVEL_SOCIO_ECONOMICO,levels(esc5$NIVEL_SOCIO_ECONOMICO)[c(2,5,3,4,1,6)])
esc9$NIVEL_SOCIO_ECONOMICO<-factor(esc9$NIVEL_SOCIO_ECONOMICO)
esc9$NIVEL_SOCIO_ECONOMICO<-factor(esc9$NIVEL_SOCIO_ECONOMICO,levels(esc9$NIVEL_SOCIO_ECONOMICO)[c(7,2,5,3,4,1,6)])
esc5$DEPENDENCIA_ADM<-factor(esc5$DEPENDENCIA_ADM)
esc5$DEPENDENCIA_ADM<-factor(esc5$DEPENDENCIA_ADM,levels(esc5$DEPENDENCIA_ADM)[c(1,3,2)])
esc9$DEPENDENCIA_ADM<-factor(esc9$DEPENDENCIA_ADM)
esc9$DEPENDENCIA_ADM<-factor(esc9$DEPENDENCIA_ADM,levels(esc9$DEPENDENCIA_ADM)[c(1,3,2)])

#Removendo dados desnecessários
rm(base_5EF)
rm(base_9EF)
rm(ESCOLA_5EF)
rm(ESCOLA_9EF)
rm(i)

Sys.sleep(2)
save.image("./baseESCT.RData")