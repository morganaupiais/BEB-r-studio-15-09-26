library(sampling)
library(ggplot2)
library(viridis)
library(dplyr)


3.16 + 2.89*27 - 65.897/108.6


#commentaire : [1] est un objet créé par R : [1] 80.58321
# 


x = 3.16 + 2.89*27 - 65.897/108.6

cormoran_data = read.table(file = "C:/Users/morga/Desktop/M1/Cours S7/BEB/r studio cours 1/BEB-r-studio-15-09-26/cormoran.txt", header = TRUE)
crabes_data = read.csv(file = "crabes.csv",dec = ",")
farms_MAC_data = read.csv2(file = "farms_MAC.csv")
farms_PC_data = read.csv2(file = "farms_PC.csv", sep= ",", header = TRUE, row.names = 1)

farms_MAC_data = select(farms_MAC_data,-Champ)


plot(x=cormoran_data$year,y=cormoran_data$pop)

moy_pop = sum(cormoran_data$pop)/length(cormoran_data$year)
moy_year = sum(cormoran_data$year)/length(cormoran_data$year)
#moy_year_f = mean(cormoran_data$year)
#moy_pop_f = mean(cormoran_data$pop)


var_pop = sum(((cormoran_data$pop)-moy_pop)**2) / 21
var_year = sum(((cormoran_data$year)-moy_year)**2) / 21
var_nyear_f = var(cormoran_data$year) * (20/21)
var_npop_f = var(cormoran_data$pop) * (20/21)
#R calcule toujours la variance sur la base d'un échantillon



plot(x=crabes_data$Largeur,y=crabes_data$Longueur)

ggplot(crabes_data, aes(x = Longueur, y = Largeur, colour = X)) +
  geom_point(size = 3) +
  labs(x = "longueur", y = "largeur", colour = "crabe") +
  theme_minimal()



ggplot(crabes_data, aes(x = Longueur, y = Largeur))+
  geom_boxplot()




