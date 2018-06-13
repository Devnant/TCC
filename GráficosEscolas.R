load("./baseESCT2.RData")

# Histogramas Notas Escolas

myt <- ttheme_default(
  # Use hjust and x to left justify the text
  # Alternate the row fill colours
  #core = list(fg_params=list(hjust = 1, x=1),
  #            bg_params=list(fill=c("yellow", "pink"))),
  
  # Change column header to white text and red background
  colhead = list(fg_params=list(col="black",fontface=1L),
                 bg_params=list(fill="skyblue3"))
)
  
hist5lp<-ggplot(data=esc5, aes(esc5$MEDIA_5EF_LP)) +
  geom_histogram(breaks=seq(180, 280, by =10), 
                 col="white",
                 aes(fill=..count..))+
  scale_fill_gradient("Frequência",low ="skyblue", high ="skyblue4")+
  labs(x="Média das Notas do 5° Ano do Ensino Fundamental - Língua Portuguesa",y="Frequência")+
  theme_bw()
tab5lp<-tableGrob(t(summary(esc5$MEDIA_5EF_LP)),theme=myt)
grid5lp<-grid.arrange(hist5lp, tab5lp,
             nrow=2,
             as.table=TRUE,
             heights=c(3,1))
plot(grid5lp)

hist5mt<-ggplot(data=esc5, aes(esc5$MEDIA_5EF_MT)) +
  geom_histogram(breaks=seq(180, 290, by =10), 
                 col="white",
                 aes(fill=..count..))+
  scale_fill_gradient("Frequência",low ="skyblue", high ="skyblue4")+
  labs(x="Média das Notas do 5° Ano do Ensino Fundamental - Matemática",y="Frequência")+
  theme_bw()
tab5mt<-tableGrob(t(summary(esc5$MEDIA_5EF_MT)),theme=myt)
grid5mt<-grid.arrange(hist5mt, tab5mt,
             nrow=2,
             as.table=TRUE,
             heights=c(3,1))
plot(grid5mt)

hist9lp<-ggplot(data=esc9, aes(esc9$MEDIA_9EF_LP)) +
  geom_histogram(breaks=seq(220, 320, by =10), 
                 col="white",
                 aes(fill=..count..))+
  scale_fill_gradient("Frequência",low ="skyblue", high ="skyblue4")+
  labs(x="Média das Notas do 9° Ano do Ensino Fundamental - Língua Portuguesa",y="Frequência")+
  theme_bw()
tab9lp<-tableGrob(t(summary(esc9$MEDIA_9EF_LP)),theme=myt)
grid9lp<-grid.arrange(hist9lp, tab9lp,
             nrow=2,
             as.table=TRUE,
             heights=c(3,1))
plot(grid9lp)

hist9mt<-ggplot(data=esc9, aes(esc9$MEDIA_9EF_MT)) +
  geom_histogram(breaks=seq(220, 340, by =10), 
                 col="white",
                 aes(fill=..count..))+
  scale_fill_gradient("Frequência",low ="skyblue", high ="skyblue4")+
  labs(x="Média das Notas do 9° Ano do Ensino Fundamental - Matemática",y="Frequência")+
  theme_bw()
tab9mt<-tableGrob(t(summary(esc9$MEDIA_9EF_MT)),theme=myt)
grid9mt<-grid.arrange(hist9mt, tab9mt,
             nrow=2,
             as.table=TRUE,
             heights=c(3,1))
plot(grid9mt)

# Boxplots Notas Escolas

box5loclp<-ggplot(esc5,aes(x=NOM_MESO_REGIAO,y=MEDIA_5EF_LP))+
  geom_boxplot(aes(colour=NOM_MESO_REGIAO))+
  labs(x="Mesoregião",y="Média das Notas do 5° Ano do Ensino Fundamental - Língua Portuguesa", color="Mesoregião")+
  theme_bw()+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

box5locmt<-ggplot(esc5,aes(x=NOM_MESO_REGIAO,y=MEDIA_5EF_MT))+
  geom_boxplot(aes(colour=NOM_MESO_REGIAO))+
  labs(x="Mesoregião",y="Média das Notas do 5° Ano do Ensino Fundamental - Matemática", color="Mesoregião")+
  theme_bw()+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

box9loclp<-ggplot(esc9,aes(x=NOM_MESO_REGIAO,y=MEDIA_9EF_LP))+
  geom_boxplot(aes(colour=NOM_MESO_REGIAO))+
  labs(x="Mesoregião",y="Média das Notas do 9° Ano do Ensino Fundamental - Língua Portuguesa", color="Mesoregião")+
  theme_bw()+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

box9locmt<-ggplot(esc9,aes(x=NOM_MESO_REGIAO,y=MEDIA_9EF_MT))+
  geom_boxplot(aes(colour=NOM_MESO_REGIAO))+
  labs(x="Mesoregião",y="Média das Notas do 9° Ano do Ensino Fundamental - Matemática", color="Mesoregião")+
  theme_bw()+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

# Boxplots Rede Adm

box5redelp<-ggplot(esc5,aes(x=DEPENDENCIA_ADM,y=MEDIA_5EF_LP))+
  geom_boxplot(aes(colour=DEPENDENCIA_ADM))+
  labs(x="Rede",y="Média das Notas do 5° Ano do Ensino Fundamental - Língua Portuguesa", color="Rede Administrativa")+
  theme_bw()

box5redemt<-ggplot(esc5,aes(x=DEPENDENCIA_ADM,y=MEDIA_5EF_MT))+
  geom_boxplot(aes(colour=DEPENDENCIA_ADM))+
  labs(x="Rede",y="Média das Notas do 5° Ano do Ensino Fundamental - Matemática", color="Rede Administrativa")+
  theme_bw()

box9redelp<-ggplot(esc9,aes(x=DEPENDENCIA_ADM,y=MEDIA_9EF_LP))+
  geom_boxplot(aes(colour=DEPENDENCIA_ADM))+
  labs(x="Rede",y="Média das Notas do 9° Ano do Ensino Fundamental - Língua Portuguesa", color="Rede Administrativa")+
  theme_bw()

box9redemt<-ggplot(esc9,aes(x=DEPENDENCIA_ADM,y=MEDIA_9EF_MT))+
  geom_boxplot(aes(colour=DEPENDENCIA_ADM))+
  labs(x="Rede",y="Média das Notas do 9° Ano do Ensino Fundamental - Matemática", color="Rede Administrativa")+
  theme_bw()

# Boxplots Nivel Socioeconômico

box5soclp<-ggplot(esc5,aes(x=NIVELSOC,y=MEDIA_5EF_LP))+
  geom_boxplot(aes(colour=NIVELSOC))+
  labs(x="Rede",y="Média das Notas do 5° Ano do Ensino Fundamental - Língua Portuguesa", color="Nível Socioeconômico")+
  theme_bw()

box5socmt<-ggplot(esc5,aes(x=NIVELSOC,y=MEDIA_5EF_MT))+
  geom_boxplot(aes(colour=NIVELSOC))+
  labs(x="Rede",y="Média das Notas do 5° Ano do Ensino Fundamental - Matemática", color="Nível Socioeconômico")+
  theme_bw()

box9soclp<-ggplot(esc9,aes(x=NIVELSOC,y=MEDIA_9EF_LP))+
  geom_boxplot(aes(colour=NIVELSOC))+
  labs(x="Rede",y="Média das Notas do 9° Ano do Ensino Fundamental - Língua Portuguesa", color="Nível Socioeconômico")+
  theme_bw()

box9socmt<-ggplot(esc9,aes(x=NIVELSOC,y=MEDIA_9EF_MT))+
  geom_boxplot(aes(colour=NIVELSOC))+
  labs(x="Rede",y="Média das Notas do 9° Ano do Ensino Fundamental - Matemática", color="Nível Socioeconômico")+
  theme_bw()