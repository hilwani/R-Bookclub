library(ggplot2)

data(iris)
names(iris)

#G1: a boxplot for Sepal.Length
ggplot(data=iris, aes(y=Sepal.Length))+
  geom_boxplot()

#G2: boxplots of Sepal.Length of different species
ggplot(data=iris, aes(x=Species, y=Sepal.Length))+
  geom_boxplot()

#G3: how to make the boxplots better
ggplot(data=iris, aes(x=Species, y=Sepal.Length))+
  geom_boxplot()+
  xlab("Species of Iris")+
  ylab("Sepal Length of Iris")+
  theme_bw()

#G4: layer the dotplots to the boxplots
g1 <- ggplot(data=iris, aes(x=Species, y=Sepal.Length))+
        geom_boxplot()+
        xlab("Species of Iris")+
        ylab("Sepal Length of Iris")+
        theme_bw()

g1+geom_point(colour="grey")

