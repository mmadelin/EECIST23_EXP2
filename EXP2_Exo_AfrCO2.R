#############################################################################
#####                                                                   #####
#####           STATISTIQUES BIVARIÉES - ANALYSE DE RELATIONS           #####
#####                                                                   #####
#############################################################################

# Quelques conseils pour utliser ce fichier :
# - dès qu'une ligne commence, c'est un commentaire = la ligne ne s'exécutera pas
# (pour ajouter des commentaires, vous pouvez ajouter "#" avant un commentaire, en début de ligne ou à la fin d'une commande // ou Ctrl Maj C)
# - les fonctions et l'aide à la lecture des résultats sont présentés dans des commentaires
# - à vous de remplir les fonctions



###################
# Lecture des données
###################

dev <- read.csv2("data/afrika_don.csv")

# Pour avoir un aperçu du tableau de données : 
head(dev)


###################
# Quanti - Quanti
###################

# à partir du tableau de données, on peut par exemple tester la relation entre émissions de CO2 par habitant (CO2HAB) et le PIB par habitant (PIB)

# Nuage de points 
# R : plot(tableau$varQn1, tableau$varQn2) 
# avec varQn1 = X et varQn2 = Y
plot(,)

# Test de corrélation

# R : cor(tableau$varQn1, tableau$varQn2) 
# on peut préciser la méthode en ajoutant "method="pearson""
cor(,)
# => le résultat affiché est le [coefficient de corrélation] entre les 2 variables

# R : cor.test(tableau$varQn1, tableau$varQn2, method="pearson") => coefficient de corrélation
# à nouveau, "method="pearson""
cor.test(,)
# => regarder la valeur du [coefficient] et la [p-value] pour conclure sur la significativité de la relation (<5%, on valide)

# Régression

# R : lm(tableau$varQn1 ~ tableau$varQn2) 
# le tilde (~) signifie "en fonction de"
# on cherche à modéliser la relation Y (varQn1) = a X (varQn2) + b
lm( ~ )
# => l'équation de la régression : varQn1 = [la valeur sous le nom de la variable] . varQn1 + [intercept]

# en assignant (avec "<-") le résultat, d'autres résultats (comme les résidus, etc.).  
lm_result <- lm( ~ )

# Analyse des résidus

# pour avoir accès aux résidus
lm_result$residuals

# pour joindre les résidus au tableau initial
dev$residus <- lm_result$residuals

# pour vérifier l'homoscédasticité des résidus, etc.
# plot(tableau$varQn2, tableau$residus) avec varQn2 = X
plot(,)


### Pour les plus rapides
# - vous pouvez tester d'autres corrélations
# - vous pouvez essayer de les cartographier avec Magrit ou R







###################
# Quanti - Quali
###################

# à partir du tableau de données, on peut par exemple tester la relation entre émissions de CO2 par habitant (CO2HAB) et la région 

# Boxplot
# R : boxplot(tableau$varQn ~ tableau$varQl) 
# à nouveau, on retrouve la tilde
boxplot( ~ )

# Analyse de la variance
# anova_result <- aov(varQn ~ varQl, data=tableau)
# summary(anova_result)
anova_result <- aov(...)
summary(anova_result)
# => regarder la valeur du F observé [F value] et la probalité que le F observé soit supérieur à la table [Pr(>F)] pour conclure sur la significativité de la relation (<5%, on valide)
# Vous pouvez regarder directement la typologie de la significativité (par ex, *** pour inférieur à 0.1%)


### Pour les plus rapides
# - vous pouvez tester d'autres représentations graphiques
# - vous pouvez aller plus loin avec TukeyHSD() et pairwise.t.test()





