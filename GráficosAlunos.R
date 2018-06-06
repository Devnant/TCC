load("./baseCONS.RData")

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
  
hist5lp<-ggplot(data=base_5EF, aes(base_5EF$notalp)) +
  geom_histogram(breaks=seq(80, 340, by =10), 
                 col="white",
                 aes(fill=..count..))+
  scale_fill_gradient("Frequência",low ="skyblue", high ="skyblue4")+
  labs(x="Notas do 5° Ano do Ensino Fundamental - Língua Portuguesa",y="Frequência")+
  theme_bw()
tab5lp<-tableGrob(t(summary(base_5EF$notalp)),theme=myt)
grid5lp<-grid.arrange(hist5lp, tab5lp,
             nrow=2,
             as.table=TRUE,
             heights=c(3,1))
plot(grid5lp)

hist5mt<-ggplot(data=base_5EF, aes(base_5EF$notamt)) +
  geom_histogram(breaks=seq(120, 370, by =10), 
                 col="white",
                 aes(fill=..count..))+
  scale_fill_gradient("Frequência",low ="skyblue", high ="skyblue4")+
  labs(x="Notas do 5° Ano do Ensino Fundamental - Matemática",y="Frequência")+
  theme_bw()
tab5mt<-tableGrob(t(summary(base_5EF$notamt)),theme=myt)
grid5mt<-grid.arrange(hist5mt, tab5mt,
             nrow=2,
             as.table=TRUE,
             heights=c(3,1))
plot(grid5mt)

hist9lp<-ggplot(data=base_9EF, aes(base_9EF$notalp)) +
  geom_histogram(breaks=seq(110, 400, by =10), 
                 col="white",
                 aes(fill=..count..))+
  scale_fill_gradient("Frequência",low ="skyblue", high ="skyblue4")+
  labs(x="Notas do 9° Ano do Ensino Fundamental - Língua Portuguesa",y="Frequência")+
  theme_bw()
tab9lp<-tableGrob(t(summary(base_9EF$notalp)),theme=myt)
grid9lp<-grid.arrange(hist9lp, tab9lp,
             nrow=2,
             as.table=TRUE,
             heights=c(3,1))
plot(grid9lp)

hist9mt<-ggplot(data=base_9EF, aes(base_9EF$notamt)) +
  geom_histogram(breaks=seq(150, 445, by =10), 
                 col="white",
                 aes(fill=..count..))+
  scale_fill_gradient("Frequência",low ="skyblue", high ="skyblue4")+
  labs(x="Notas do 9° Ano do Ensino Fundamental - Matemática",y="Frequência")+
  theme_bw()
tab9mt<-tableGrob(t(summary(base_9EF$notamt)),theme=myt)
grid9mt<-grid.arrange(hist9mt, tab9mt,
             nrow=2,
             as.table=TRUE,
             heights=c(3,1))
plot(grid9mt)

# Boxplots Sexo

box5sexlp<-ggplot(base_5EF,aes(x=sexo,y=notalp))+
  geom_boxplot(aes(colour=sexo))+
  labs(x="Sexo",y="Notas do 5° Ano do Ensino Fundamental - Língua Portuguesa", color="Sexo")+
  theme_bw()+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

box5sexmt<-ggplot(base_5EF,aes(x=sexo,y=notamt))+
  geom_boxplot(aes(colour=sexo))+
  labs(x="Sexo",y="Notas do 5° Ano do Ensino Fundamental - Matemática", color="Sexo")+
  theme_bw()+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

box9sexlp<-ggplot(base_9EF,aes(x=sexo,y=notalp))+
  geom_boxplot(aes(colour=sexo))+
  labs(x="Sexo",y="Notas do 9° Ano do Ensino Fundamental - Língua Portuguesa", color="Sexo")+
  theme_bw()+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

box9sexmt<-ggplot(base_9EF,aes(x=sexo,y=notamt))+
  geom_boxplot(aes(colour=sexo))+
  labs(x="Sexo",y="Notas do 9° Ano do Ensino Fundamental - Matemática", color="Sexo")+
  theme_bw()+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

# Boxplots Percep

box5perlp<-ggplot(base_5EF,aes(x=percep,y=notalp))+
  geom_boxplot(aes(colour=percep))+
  labs(x="Percepção",y="Notas do 5° Ano do Ensino Fundamental - Língua Portuguesa", color="Percepção")+
  theme_bw()+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

box5permt<-ggplot(base_5EF,aes(x=percep,y=notamt))+
  geom_boxplot(aes(colour=percep))+
  labs(x="Percepção",y="Notas do 5° Ano do Ensino Fundamental - Matemática", color="Percepção")+
  theme_bw()+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

box9perlp<-ggplot(base_9EF,aes(x=percep,y=notalp))+
  geom_boxplot(aes(colour=percep))+
  labs(x="Percepção",y="Notas do 9° Ano do Ensino Fundamental - Língua Portuguesa", color="Percepção")+
  theme_bw()+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

box9permt<-ggplot(base_9EF,aes(x=percep,y=notamt))+
  geom_boxplot(aes(colour=percep))+
  labs(x="Percepção",y="Notas do 9° Ano do Ensino Fundamental - Matemática", color="Percepção")+
  theme_bw()+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

# Boxplots formpais

box5forlp<-ggplot(base_5EF,aes(x=formpais,y=notalp))+
  geom_boxplot(aes(colour=formpais))+
  labs(x="Formação dos Pais",y="Notas do 5° Ano do Ensino Fundamental - Língua Portuguesa", color="Formação dos Pais")+
  theme_bw()+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

box5formt<-ggplot(base_5EF,aes(x=formpais,y=notamt))+
  geom_boxplot(aes(colour=formpais))+
  labs(x="Formação dos Pais",y="Notas do 5° Ano do Ensino Fundamental - Matemática", color="Formação dos Pais")+
  theme_bw()+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

box9forlp<-ggplot(base_9EF,aes(x=formpais,y=notalp))+
  geom_boxplot(aes(colour=formpais))+
  labs(x="Formação dos Pais",y="Notas do 9° Ano do Ensino Fundamental - Língua Portuguesa", color="Formação dos Pais")+
  theme_bw()+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

box9formt<-ggplot(base_9EF,aes(x=formpais,y=notamt))+
  geom_boxplot(aes(colour=formpais))+
  labs(x="Formação dos Pais",y="Notas do 9° Ano do Ensino Fundamental - Matemática", color="Formação dos Pais")+
  theme_bw()+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

# Boxplots incentivo

box5inclp<-ggplot(base_5EF,aes(x=incentivo,y=notalp))+
  geom_boxplot(aes(colour=incentivo))+
  labs(x="Incentivo dos Pais",y="Notas do 5° Ano do Ensino Fundamental - Língua Portuguesa", color="Incentivo dos Pais")+
  theme_bw()+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

box5incmt<-ggplot(base_5EF,aes(x=incentivo,y=notamt))+
  geom_boxplot(aes(colour=incentivo))+
  labs(x="Incentivo dos Pais",y="Notas do 5° Ano do Ensino Fundamental - Matemática", color="Incentivo dos Pais")+
  theme_bw()+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

box9inclp<-ggplot(base_9EF,aes(x=incentivo,y=notalp))+
  geom_boxplot(aes(colour=incentivo))+
  labs(x="Incentivo dos Pais",y="Notas do 9° Ano do Ensino Fundamental - Língua Portuguesa", color="Incentivo dos Pais")+
  theme_bw()+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

box9incmt<-ggplot(base_9EF,aes(x=incentivo,y=notamt))+
  geom_boxplot(aes(colour=incentivo))+
  labs(x="Incentivo dos Pais",y="Notas do 9° Ano do Ensino Fundamental - Matemática", color="Incentivo dos Pais")+
  theme_bw()+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank())