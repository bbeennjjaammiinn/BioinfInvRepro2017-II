## Tarea 6.2 

# 1.Cargar en un DF llamada fullmat el archivo Prac_Uni6/maices/meta/maizteocintle_SNP50k_meta_extended.txt

fullmat <- read.delim("Prac_Uni6/maices/meta/maizteocintle_SNP50k_meta_extended.txt")

# 2.¿ Que tipo de objeto creamos al cargar la base? dataframe
class(fullmat)

# 3. ¿ como se ven las primeras 6 lineas del archivo?
head(fullmat)

# 4. ¿cuantas muestras hay? 165
nrow(fullmat)

# 5. ¿de cuantos estados se tiene muestras? 19
length(levels(fullmat$Estado))

# 6. ¿cuantas muestras fueron colectadas antes de 1980? 8
sum(fullmat$A.o._de_colecta<1980, na.rm=TRUE)

# 7. ¿cuantas muestras hay de cada raza?
table(fullmat$Raza)

# 8. ¿en promedio a que altitud fueron colectadas? 1519.242
mean(fullmat$Altitud)

# 9. ¿y a que altitud maxima y minima fueron colectadas?MAXIMA 2769 MINIMA 5
max(fullmat$Altitud)
min(fullmat$Altitud)

# 10. Crea una nueva DF de datos solo con las muestras de la raza olotillo
razaolotillo<-fullmat[fullmat$Raza=="Olotillo", ]

# 11. Crea una nueva DF de datos solo con las muestras de las razas reventador, jala y ancho
x <-fullmat$Raza %in% c("Reventador", "Jala", "Ancho")
ReventadorJalaAncho<-fullmat[x, ]

# Escribe la matriz anterior a un archivo llamado "submat.cvs" en /meta
write.csv(ReventadorJalaAncho, file = paste0(getwd(), "Prac_Uni6/maices/meta/submat.cvs"))
write.csv(ReventadorJalaAncho, file = "Prac_Uni6/maices/submat.cvs")