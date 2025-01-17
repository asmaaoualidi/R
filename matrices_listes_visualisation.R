#exercice1:
l1 <- c("Casablanca", "Rabat", "Marrakech", "Fès", "Tanger")
l2 <- c("Paris", "Lyon", "Marseille", "Toulouse", "Nice")
length(l1)
length(l2)
l1[1]<-"Safi"
l1
VillesRegion1 <-c(l1[1:1],l1[3:3])
VillesRegion1
indix<-c()
reg<-l1[c(1,3)]#affectation
reg
s<-sort(l1)
s
print()
invers<-rev(l1)
l3<-seq(from=10,to=10000,by=10)
l3
v<-rep(c(0,1,2),each=6)
v
max(l3)
min(l3)
sum(l3)
median(l3)
sd(l3)

#exercice 2
#1.	Extraire les trois premiers caractères d'une chaîne X
X<-"asmaa"
ext<-substr(X,1,3)
print(ext)

#2.	Concaténer deux Chaînes X et Y 
Y<-"oualidi"
nom<-paste(X,Y)
print(nom)

#3.	Convertir une chaîne Z en majuscules 
z<-toupper(nom)
print(z)

#4.	Compter toutes les occurrences de "R" dans une chaîne T en utilisant grep 
t<-" le language R est un langage inspire de S et scheme"
l<-"bonjour bonjour"
o<-length(grep("bonjour",unlist(strsplit(l," "))))
o

#exercice3
a<-"le language R est un langage inspire de S et scheme"
nchar(a)#nombre de caractere
substr(a,1,2)#extraire
b<-",il est un langage de statistique"
paste(a,b)#concatener
toupper(a)#majiscule
tolower(a)#minuscule
c<-strsplit(a," ")#diviser la chaine
gsub("l","L",a)#remplace
grep("l",a)#cherch
sub('l','L',a)#remplace la premier char
sprintf("R:%s",a)#reformest la chain

#exercice4(matrice)
mat<-matrix(c(15,17,12,16,18,14,16,18,13,19,15,14),nrow = 3,byrow = TRUE) #cree
mat
colnames(mat)=c("ESTSA206","M201","M203","M204")#ajout les nom de colone
rownames(mat)=c("Stagiaire1","Stagiaire2","Stagiaire3")  #ajoutles nom de ligne
mat<-cbind(mat,c(rowSums(mat)))#ajout une colone de total des note
colnames(mat)[5]<-"sum"
print(colnames(mat))#afficher les nom de colonne
print(rownames(mat))#afficher les nom de ligne
print(mat)#affiche la mattrice
print(dim(mat))#affiche les dimention
print(length(mat))#affiche le nombre d'element de la mat
moyenn<-apply(mat,2,mean)#moyenne par module
moyenn
moyen_stag<-apply(mat,1,mean)#moyenne par stagaire
moyen_stag
stat<-apply(mat, 1, summary)#la resum statistic
stat
sta_m<-summary(mat[,])#la resum par modul
sta_m


#exercice5 (list)

liste_note<-list(stagaire1=mat[1:1,1:3],
                 stagaire2=mat[2:2,1:3],
                 stagaire3=mat[3:3,1:3])#cree liste
liste_note
listo <-list(stage=c("est201"=13,"m201"=16,"m203"=18),
             stage2=c("est201"=14,"m201"=17,"m203"=19),
             stage3=c("est201"=18,"m201"=19,"m203"=10))
print(listo)
print(length(liste_note))#nombre d'element dans list
print(str(liste_note))
liste_note=c(liste_note,list(stagaire4=c(ESTSA206=16.54,M201=17,M203=15)))#ajout un v
names(liste_note)=c("asmaa","yassin","amar","laila")
print(unlist(liste_note))#transformer la list a un vecteur unique
moy<-sapply(liste_note, mean)#moyenne
moy
arrond<-lapply(liste_note, round)#arrondir
arrond
resum<-lapply(liste_note, summary)#resum statique
resum
View(liste_note)#afficher le contenu de la list

#exercice6(arrays)
tab<-array(1:18,dim = c(3,3,2))
print(tab)
print(length(tab))
print(str(tab))#affich la structur de tab
print(dim(tab))#affich dim
somme<-apply(tab, c(1,2), sum)
somme
moyn=apply(tab,c(1,2),mean)
moyn
cm<-colMeans(tab[,,1])
cm<-rowMeans(tab[,,2])
s<-summary(tab)
dimnames(tab)<-list(lignes=c("l1","l2","l3"),
                    colonnes=c("c1","c2","c3"),
                    couches=c("1c","2c"))#ajouter les noms de row,col et les couche 
#exercice7(datafram)
df<-data.frame(
               ESTSA206=c(15,18,13),
               M201=c(17,14,19),
               M203=c(12,16,15),
               M204=c(16,18,14),
               row.names = c("stagair1","stagair2","stagair3")
)
#rownames(df)<-c("stagair1","stagair2","stagair3")#nomee les ligne
df
print(ncol(df))#nomb de col
print(dim(df))#nombre dim
print(colnames(df))#affiche nom col
print(rownames(df))#affiche nom row
m_df<-apply(df,1,mean)#moyn par ligne
m_df
m_cl_df<-apply(df, 2, mean)#moy par col
m_cl_df
s_col<-apply(df, 2, summary)#resum par col modul
summary(df,1)
s_col
print(colMeans(df))
print(rowMeans(df))
View(df)
df<-rbind(df,data.frame(ESTSA206=17,M201=19,M203=15,M204=16))
rownames(df)[4]<-"stagair4"
df<-rbind(df,"stagaire5"=c(12,17,19,15))#ajout ligne
df
df<-cbind(df,c(rowMeans(df)))#ajout col
colnames(df)[5]<-"moyenne"
df
View(df)
