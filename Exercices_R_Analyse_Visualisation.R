#exercice1
install.packages("readxl")#install le package
library(readxl)#importer
data <- read_xlsx("C:/Users/user/Documents/IA/ADA/prof arbi/tp/votes_entreprise.xlsx")#charger data
data#afficher
print(head(data))#afficher les premer ligne
df <- data.frame(
  Departement = data$Département,
  Code_Candidat = data$Code_Candidat,
  vote = data$Vote

)#cree un dataframe
df

total_votes<-length(data$Vote)#le nombre totel de vote
print(total_votes)
rep_vote<-table(data$Vote)#calculer la repetition des vote
print(rep_vote)

coler= c("Neutre"="red","Non"="lightblue","oui"="pink")#specifier les couleur
barplot(rep_vote,col = coler,xlab = "nombre de vote",ylab = "frequence",main = " la répartition des votes")#cree le barplot

#exercice 2
data("mtcars")#charger data
print(head(mtcars))
df<- data.frame(wt=mtcars$wt,
                mpg=mtcars$mpg,
                hp=mtcars$hp)

## calcul la moyen de wt mpg hp
 
my_wt<-mean(df$wt)
my_wt
my_mpg<-mean(df$mpg)
my_mpg
my_hp<-mean(df$hp)
my_hp
plot(df$wt,df$mpg,xlab = "Poids(wt) ",
     ylab = "consomation(mpg)",
     main = "Relation entre le Poids et la Consommation de Carburant",col="red",pch=19)#cree scaterr plot

# Créer un histogramme pour la variable mpg
hist(mtcars$mpg,
     xlab = "Consommation (mpg)",
     ylab = "Fréquence",
     main = "Distribution de la Consommation (mpg)",
     col = "lightblue",  # Couleur des barres de l'histogramme
     border = "black")   # Couleur des bordures des barres

#Exercice 3 Box plot
matrice_notes <- data.frame(
  Etudiant = c("Etudiant1", "Etudiant2", "Etudiant3", "Etudiant4", "Etudiant5", 
               "Etudiant6", "Etudiant7", "Etudiant8", "Etudiant9", "Etudiant10"),
  Math = c(9, 8, 12, 8, 9, 11, 9, 9, 10, 13),
  Physique = c(12, 15, 14, 13, 15, 14, 10, 9, 15, 15),
  Français = c(15, 13, 14, 15, 14, 13, 15,16,16,14)
)
moy<-mean(unlist(matrice_notes[,-1]))
print(moy)
med<-median(unlist(matrice_notes[,-1]))
med
sumr<-summary(matrice_notes)
sumr
# Calcul des écarts-types
sd_math <- sd(matrice_notes$Math)
sd_physique <- sd(matrice_notes$Physique)
sd_francais <- sd(matrice_notes$Français)
sd_math 
sd_francais 
sd_physique
#cree un box plot pour math
boxplot(matrice_notes$Math,main="Distribution des notes en Math",xlab="math",ylab="note",col = "lightpink")
#cree un boxplot pour les trois note
colore<-c("Math"="pink","Physique"="blue","Français"="red")#personnaliser les couleur
boxplot(matrice_notes$Math,matrice_notes$Physique,matrice_notes$Français,
        main="la distribution des notes par matiere",
        xlab="les matiere",names = c("Math","Physique","Français"),ylab="note",col=colore)#cree un box plot 

#Exercice 4 Box plot a bulle 
data_pays <- data.frame(
  Pays = c("France", "Allemagne", "Espagne", "Italie", "Japon", "Canada", "Royaume-Uni", "États-Unis"),
  Population = c(67, 83, 47, 60, 126, 38, 67, 331),  # Population en millions
  PIB = c(41463, 46259, 32361, 34477, 40618, 48143, 42330, 62606),  # PIB par habitant en USD
  Esperance_vie = c(82, 81, 83, 82, 84, 82, 81, 78)  # Espérance de vie en années
)

symbols(
  data_pays$PIB,  # PIB par habitant
  data_pays$Esperance_vie,# Espérance de vie
  inches = 0.5,  # Taille de mise à l'échelle des cercles
  fg = "black",  # Couleur du contour des bulles
  bg = colors,  # Couleurs des bulles
  xlab = "PIB par habitant (USD)",  # Label de l'axe X
  ylab = "Espérance de vie (années)",  # Label de l'axe Y
  main = " PIB par habitant vs Espérance de vie"
)


colors <- c("red", "orange", "green", "cyan", "blue", "purple", "magenta", "yellow")

# Add legend with the correct colors
legend("topright", legend = data_pays$Pays, fill = as.vector(colors), title = "Pays")
