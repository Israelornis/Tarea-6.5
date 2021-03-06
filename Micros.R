## Analisis de componentes principales con discriminantes para microsatelites


## Israel Moreno-Contreras
#### Ornitolog�a, Facultad de Ciencias, UNAM


# Este es un ejemplo sobre como analizar datos en formato GENEPOP obtenidos de microsat�lites.
# Como caso de estudio usar� los datos de Bertrand et al. (2016) publicados en [Journal of Evolutionary Biology](http://onlinelibrary.wiley.com/doi/10.1111/jeb.12829/abstract) y 
# disponibles en el repositorio digital [Dryad](http://datadryad.org/resource/doi:10.5061/dryad.50b93).



# Activamos libreria "adegenet" para la lectura de microsatelites:
library(adegenet)

# Cargamos los datos 
micros <- read.genepop("Genotypes_ZoboGrad.gen", ncode=3L)

# Calculamos componentes principales. Choose the number PCs to retain (>=1): "17", #Choose the number discriminant functions to retain (>=1): "4"
Discriminant_Pca <- dapc(micros)
17
4
# Representaci�n gr�fica de an�lisis multivariado
scatter(Discriminant_Pca)

# Buscamos la optimizaci�n en el n�mero de componentes a utilizar
optim.a.score(Discriminant_Pca)
#Optimo = "9"

# Recalculamos parametros
Discriminant_Pca <- dapc(micros, n.pca = 7, n.da = 2)
scatter(Discriminant_Pca)