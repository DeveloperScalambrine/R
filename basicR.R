# ? help about that type
?print
# variables
first_variable <- "This my variable"
second_variable <- 12.5

quarter_1_sales <- 35657.98
quarter_2_sales <- 43810.55
print(midyear_sales <- quarter_1_sales + quarter_2_sales / 2)
mr <- midyear_sales
median(mr)

dados <- data.frame(
  Ozone = c(
    "41", "36", "12", "18"
  ),
  solar_r = c(
    "190", "118", "149", "313"
  ),
  wind = c(
    "7.4", "8.0", "12.6", "11.5"
  ),
  temp = c(
    "67", "72", "74", "62"
  ),
  month = c(
    "5", "5", "5", "5"
  ),
  day = c(
    "1", "2", "3", "4"
  )
)

tre <- dados$solar_r > 150 & dados$wind > 10
print(tre)

# vector
vec_1 <- c(10.0,9.5,12.8)
x <- vec_1
is.double(x)
length(x)
?median
median(vec_1)
median(c(10.0,9.5,1))
var_t <- c(1,2,3)
names(var_t) <- c('a','b','c')
var_t

# List
l <- list('Carlos', 37L, 'Brazilian', is.logical(TRUE))
names(l) <- list("Name ", "Age", "Country")
l

#date
today()
now()

#Data frames
print(top_ten_teams)
print(top_ten_teams)
