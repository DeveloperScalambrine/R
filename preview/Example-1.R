install.packages('Tmisc')
install.packages("ggplot2")
install.packages("datasauRus")
library(datasauRus)
library(Tmisc)
data(quartet)
View(quartet)

# Para calcular o desvio padrão no R, podemos utilizar a 
# função sd. Essa função faz parte do pacote stats e já está 
# instalado de forma nativa no R. Uma outra forma de se calcular
#o desvio padrão é aplicando a função da raiz quadrada.

quartet %>%
  group_by(set) %>%
  summarise(mean(x),sd(x),mean(y),sd(y),cor(x,y))

## visualizar pelo grafico nos dar uma melhor dimensão da correlação das variaveis
ggplot(quartet,aes(x,y)) + geom_point() + geom_smooth(method ="lm",se=FALSE) + facet_wrap(~set)

ggplot(datasaurus_dozen, aes(x = x, y = y, colour = dataset)) + geom_point() + theme_void() + theme(legend.position = 'none') + facet_wrap(~dataset)

# verificar dados enviesados
install.packages("SimDesign")
library(SimDesign)

actual_temp <- c(68.3, 70, 72.4, 71, 67, 70)
predicted_temp <- c(67.9, 69, 71.5, 70, 67, 69)
bias(actual_temp, predicted_temp)

 
actual_sales <- c(150, 203, 137, 247, 116, 287)
predicted_sales <- c(200, 300, 150, 250, 150, 300)
bias(actual_sales, predicted_sales)
