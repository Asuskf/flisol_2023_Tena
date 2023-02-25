install.packages("ggplot2")
library(ggplot2)

# Gráfico de disperción
ggplot(data=mpg)+
  geom_point(mapping = aes(x=cty,y=hwy),
             color="red",
             shape=2,
             size=4,
             fill="salmon")

# Gráfico de dona
df<-data.frame(
  categorias=c("setosa","versicolor","virginica"),
  porcentaje=c(25,60,15))
df
ggplot(df,aes(x=2,y=porcentaje,
              fill=categorias))+
  geom_bar(stat="identity")+
  coord_polar(theta = "y")+
  xlim(0.5,2.5)+theme_void()+
  geom_text(aes(label=porcentaje),
            position = position_stack(vjust=0.5))

# Gráfico de violin
ggplot(mpg,mapping=aes(x=drv,y=cty))+
  geom_boxplot(fill="blue")+
  geom_jitter(color="red")+
  geom_violin(fill="salmon",alpha=0.4)+
  coord_flip()+coord_flip()
