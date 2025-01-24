# Cours R avancé 

data_exercice <- read.csv("C:\\Users\\33783\\Downloads\\elus-conseillers-municipaux-cm (1).csv", sep = ";")



## 2

df_Nantes <- subset(data_exercice, Libellé.de.la.commune == "Nantes")

df_Faverelles <- subset(data_exercice, Libellé.de.la.commune == "Faverelles")

df_Loire_Atlantique <- subset(data_exercice, Libellé.du.département == "Loire-Atlantique")
  
df_Gers <- subset(data_exercice, Libellé.du.département == "Gers")


## 3 

compter_nombre_d_elus <- function(data_exercice) {
    colonnes_obligatoires <- c("Nom.de.l.élu", "Prénom.de.l.élu", "Date.de.naissance")
    if (!all(colonnes_obligatoires %in% colnames(data_exercice))){
    stop("Certaines colonnes obligatoires sont manquantes")
}
    nombre_unique <- unique(data_exercice[c("Nom.de.l.élu", "Prénom.de.l.élu", "Date.de.naissance")])
    
  
    return(nrow(nombre_unique))
}
    



#application sur les dataframes

nombre_elus_nantes <- compter_nombre_d_elus(df_Nantes)
nombre_elus_nantes

nombre_elus_Faverelles <- compter_nombre_d_elus(df_Faverelles)
nombre_elus_Faverelles

nombre_elus_Loire_Atlantique <- compter_nombre_d_elus(df_Loire_Atlantique)
nombre_elus_Loire_Atlantique

nombre_elus_Gers <- compter_nombre_d_elus(df_Gers)
nombre_elus_Gers

