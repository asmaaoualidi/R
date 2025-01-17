a <-c(1,2,3,4,5,6,7,8,9,10)
b <-c(3,5,7,9)
#3.	Utilisez un opérateur logique pour vérifier quels éléments de a sont supérieurs à 5.
elem <- a[a>5]
elem
#4.	Créez un vecteur logique c qui indique si les éléments de a sont présents dans b.
c <- a %in% b
#Comptez le nombre d'éléments de a qui sont inférieurs à 4.
comp<- sum(a<4)
comp

#ex2

ages<- c(25,30,22,40,35)
salaire<- c(30000,50000 ,25000,70000,60000)
#3.	Utilisez un opérateur relationnel pour déterminer qui a plus de 30 ans.
ages[ages>30]
#4.	Identifiez les personnes dont le salaire est supérieur à 40 000 dirhams.
personne<-c('asma','lin','ahmed','salim','rida')
sup<-personne[salaire>40000]
sup
expensive <- salaire[salaire>45000]
expensive

#ex3

depenses <-c(200,300,150,400,250)
revenus <-c(1000, 1500, 800, 2000, 1200)
#3.	Calculez le solde actuel pour chaque personne.
solde<- revenus-depenses
#4.	Déterminez le pourcentage des revenus dépensés pour chaque personne.
pourcentage<-(depenses/revenus)*100
#5.	Calculez la dépense totale pour l'ensemble des personnes.
depence_total<-sum(depenses)
depence_total
