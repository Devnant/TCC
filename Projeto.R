load("./baseDIR.RData")
load("./baseESCT.RData")

# Transformar coluna TX_RESP_Q032 de TS_DIRETOR em variável categórica (A) com participação da equipe escolar, (B) caso contrário

PROJ<-as.data.frame(ifelse(TS_DIRETOR_MG$TX_RESP_Q032=="D"|TS_DIRETOR_MG$TX_RESP_Q032=="F"|TS_DIRETOR_MG$TX_RESP_Q032=="H","A","B"))
colnames(PROJ)<-"projeto"

# montar base de dados

baseDIR<-TS_DIRETOR_MG[4]
baseDIR<-cbind(baseDIR,PROJ)
baseDIR<-na.omit(baseDIR)
esc5<-left_join(esc5,baseDIR,by="ID_ESCOLA")
esc5<-na.omit(esc5)
esc9<-left_join(esc9,baseDIR,by="ID_ESCOLA")
esc9<-na.omit(esc9)
esc5$projeto<-factor(esc5$projeto)
esc5$projeto<-factor(esc5$projeto,levels(esc5$projeto)[c(2,1)])
esc9$projeto<-factor(esc9$projeto)
esc9$projeto<-factor(esc9$projeto,levels(esc9$projeto)[c(2,1)])

rm(baseDIR)
rm(PROJ)
rm(TS_DIRETOR_MG)

Sys.sleep(2)
save.image("./baseESCT2.RData")