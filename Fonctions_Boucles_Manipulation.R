sin(1)
tan(1)
log(1)
round(1.354,digits = 1)
cos(1)
 
#Exercice2
#1.	Lire le prénom de l'utilisateur en utilisant la fonction readline.
nom_utilisateur <- readline('quel est votre nom ? ')
nom_utilisateur
#2.	Afficher un message de bienvenue en utilisant la fonction cat.

bienvenu_msg <- cat('bienvenu cher utilisateur .') 

#3.	Lire une série de notes des modules fournis par l'utilisateur avec la fonction scan.

note <- scan( nmax = 4)
note

#4.	Calculer la somme de ces notes, la moyenne, puis concaténer et afficher le message final en utilisant paste et cat.
sum_note<- sum(note)
sum_note
moyen_note<-mean(note)
moyen_note
msg<-cat("bonjour madame ",nom_utilisateur ,"\n" ,paste("votre moyenne du semesttre est : ",moyen_note))

#exercice3
#1.	Demandez au gestionnaire d'entrer la quantité de produits commandés.

commande <- as.numeric(readline("enter la quantite de produits commandes :"))

#2.	Déterminer en affichant un message significatif si la commande est une petite commande (moins de 10 produits), une commande moyenne (entre 10 et 50 produits), ou une grande commande (plus de 50 produits).

if(commande<10){
  print(" la commande est petite .")
} else if (commande>=10 & commande<=50) {
  print(" le commande est moyenne .")
} else {
  print("le commande est grande")
}
#3.	Nous voulons savoir si les commandes peuvent être divisées en paquets égaux. Proposer un code pour faire ce test et afficher s’il les commandes peuvent être divisés en paquets égaux.

paquet <- as.numeric(readline("Entrer le nombre de paquets : "))
if (commande %% paquet == 0) {
  print("on peux deviser les paquet en nombre egaux . ")
} else {
  print("les commande ne peux pas deviser en paquets egaux .")
}

#exercice4
#1.	Utilisez une boucle repeat pour entrer les ventes mensuelles de 6 mois, en demandant à l’utilisateur de saisir une valeur valide (> 0).
vente_mois<-numeric(6)
i<-1
repeat{
  vente<-as.numeric(readline(paste("entrer les ventes de divers produits ",i," : ")))
  if( !is.na(vente) && vente>0){
    vente_mois[i]<-vente
    i<-i+1
  } else {
    print("entrer une valeur (>0).")
  }
  if(i>6){
    break
  }
}
#2.	Utilisez une boucle for pour parcourir les ventes de chaque mois et afficher les ventes du mois si elles sont inférieures à un seuil de 3000 dh.

seuil<-3000 
for ( i in 1:length(vente_mois)) {
  if (vente_mois[i]<seuil){
    print(paste("les ventes de mois ",i," sont inferieure de ",seuil,"dh ."))
  }
}
#3.	Utilisez une boucle while pour vérifier si le total des ventes dépasse un objectif annuel de 20,000 dh. Si ce n’est pas le cas, augmentez les ventes du dernier mois par 10% à chaque itération jusqu’à ce que l’objectif soit atteint.
total_ventes<-sum(vente_mois)
objectif<-20000 
while(total_ventes<objectif){
  vente_mois[6]<-vente_mois[6]*1.10
  total_ventes<-sum(vente_mois)
  print(paste("totale du ventes est :",total_ventes))
  print(paste("le nouvelle montant du dernier mois est :",vente_mois[6]))
}
print(paste("le totale du ventes a depasser l'objectif ",objectif,"dh ,le totale est :",total_ventes))

#exercice5

fun<-function(){
  print("bienvenue")
}
fun()
somm<-function(a,b){
  return(a+b)
}
somm(3,5)
som<-function(a=3,b=5,c=17){
      return(a+b+c)
}
som(5,75,8)  
nombre<- c(13,25,34,25,57,13,84)
fun1<-function(n){
  moy<-mean(n)
  return(moy)
}
fun1(nombre)
