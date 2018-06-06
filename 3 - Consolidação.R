load("./baseALU.RData")
load("./baseESCT2.RData")

## 5EF
# Definir base de dados com variáveis foco
base_5EF<-TS_ALUNO_5EF_MG[c(6,36,37,39,54,58,62,29,33)]
base_5EF<-na.omit(base_5EF)

# Criar variável desvidade
base_5EF$desvidade<-(ifelse(base_5EF$TX_RESP_Q004=="A",-2,
                                      ifelse(base_5EF$TX_RESP_Q004=="B",-1,
                                      ifelse(base_5EF$TX_RESP_Q004=="C",0,
                                      ifelse(base_5EF$TX_RESP_Q004=="D",1,
                                      ifelse(base_5EF$TX_RESP_Q004=="E",2,
                                      ifelse(base_5EF$TX_RESP_Q004=="F",3,
                                      ifelse(base_5EF$TX_RESP_Q004=="G",4,5))))))))

# Criar variável formpais
base_5EF$formpais<-ifelse(base_5EF$TX_RESP_Q019=="F"|base_5EF$TX_RESP_Q023=="F","A","B")

# Renomear variáveis
colnames(base_5EF)[2]<-"sexo"
colnames(base_5EF)[3]<-"percep"
colnames(base_5EF)[7]<-"incentivo"
base_5EF<-base_5EF[c(-4:-6)]
colnames(base_5EF)[5]<-"notalp"
colnames(base_5EF)[6]<-"notamt"

## 9EF
# Definir base de dados com variáveis foco
base_9EF<-TS_ALUNO_9EF_MG[c(6,36,37,39,54,58,62,29,33)]
base_9EF<-na.omit(base_9EF)

# Criar variável desvidade
base_9EF$desvidade<-(ifelse(base_9EF$TX_RESP_Q004=="A",2015-2001,
                     ifelse(base_9EF$TX_RESP_Q004=="B",2015-2000,
                     ifelse(base_9EF$TX_RESP_Q004=="C",2015-1999,
                     ifelse(base_9EF$TX_RESP_Q004=="D",2015-1998,
                     ifelse(base_9EF$TX_RESP_Q004=="E",2015-1997,
                     ifelse(base_9EF$TX_RESP_Q004=="F",2015-1996,
                     ifelse(base_9EF$TX_RESP_Q004=="G",2015-1995,2015-1994))))))))

# Criar variável formpais
base_9EF$formpais<-ifelse(base_9EF$TX_RESP_Q019=="F"|base_9EF$TX_RESP_Q023=="F","A","B")

# Renomear variáveis
colnames(base_9EF)[2]<-"sexo"
colnames(base_9EF)[3]<-"percep"
colnames(base_9EF)[7]<-"incentivo"
base_9EF<-base_9EF[c(-4:-6)]
colnames(base_9EF)[5]<-"notalp"
colnames(base_9EF)[6]<-"notamt"

# Fazendo junção de todas as variáveis na base de dados
base_5EF<-left_join(base_5EF,esc5,by="ID_ESCOLA")
base_5EF<-na.omit(base_5EF)
base_9EF<-left_join(base_9EF,esc9,by="ID_ESCOLA")
base_9EF<-na.omit(base_9EF)

#Salvar base de dados
rm(esc5)
rm(esc9)
rm(TS_ALUNO_5EF_MG)
rm(TS_ALUNO_9EF_MG)
Sys.sleep(2)
save.image("./baseCONS.RData")
