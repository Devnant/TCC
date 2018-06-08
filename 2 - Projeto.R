load("./baseDIR.RData")
load("./baseESCT.RData")

# Transformar coluna TX_RESP_Q032 de TS_DIRETOR em variável categórica (A) com participação da equipe escolar, (B) caso contrário

PROJ<-as.data.frame(ifelse(TS_DIRETOR_MG$TX_RESP_Q032=="D"|TS_DIRETOR_MG$TX_RESP_Q032=="F"|TS_DIRETOR_MG$TX_RESP_Q032=="H","A","B"))
colnames(PROJ)<-"PROJETO"

# montar base de dados

baseDIR<-TS_DIRETOR_MG[4]
baseDIR<-cbind(baseDIR,PROJ)
baseDIR<-na.omit(baseDIR)
esc5<-left_join(esc5,baseDIR,by="ID_ESCOLA")
esc5<-na.omit(esc5)
esc9<-left_join(esc9,baseDIR,by="ID_ESCOLA")
esc9<-na.omit(esc9)
esc5$PROJETO<-factor(esc5$PROJETO,labels=c("Não","Sim"))
esc9$PROJETO<-factor(esc9$PROJETO,labels=c("Não","Sim"))


# Reduzir número de níveis sócio econômicos para baixo, médio e alto
esc5$NIVEL_SOCIO_ECONOMICO<-(ifelse(esc5$NIVEL_SOCIO_ECONOMICO=="Muito Baixo"|
                                    esc5$NIVEL_SOCIO_ECONOMICO=="Baixo","Baixo",
                             ifelse(esc5$NIVEL_SOCIO_ECONOMICO=="Medio Baixo"|
                                    esc5$NIVEL_SOCIO_ECONOMICO=="Medio"|
                                    esc5$NIVEL_SOCIO_ECONOMICO=="Medio Alto","Medio","Alto")))
colnames(esc5)[6]<-"NIVELSOC"                            
esc5$NIVELSOC<-factor(esc5$NIVELSOC)
esc5$NIVELSOC<-factor(esc5$NIVELSOC,levels(esc5$NIVELSOC)[c(2,3,1)])

esc9$NIVEL_SOCIO_ECONOMICO<-(ifelse(esc9$NIVEL_SOCIO_ECONOMICO=="Muito Baixo"|
                                      esc9$NIVEL_SOCIO_ECONOMICO=="Baixo","Baixo",
                                    ifelse(esc9$NIVEL_SOCIO_ECONOMICO=="Medio Baixo"|
                                             esc9$NIVEL_SOCIO_ECONOMICO=="Medio"|
                                             esc9$NIVEL_SOCIO_ECONOMICO=="Medio Alto","Medio","Alto")))
colnames(esc9)[6]<-"NIVELSOC"                            
esc5$PROJETO<-factor(esc5$PROJETO,labels=c("ComPart","SemPart"))
esc5$PROJETO<-factor(esc5$PROJETO,levels(esc5$PROJETO)[c(2,1)])
esc9$PROJETO<-factor(esc9$PROJETO)
esc9$PROJETO<-factor(esc9$PROJETO,levels(esc9$PROJETO)[c(2,1)])

rm(baseDIR)
rm(PROJ)
rm(TS_DIRETOR_MG)

Sys.sleep(2)
save.image("./baseESCT2.RData")