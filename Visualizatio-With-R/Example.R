install.packages('palmerpenguins')
library(palmerpenguins)

data("penguins")
View(penguins)

ggplot(data = penguins) +
  geom_point(mapping = aes(x= flipper_length_mm, y = body_mass_g))


ggplot(data = penguins) +
  geom_point(mapping = aes(x= bill_length_mm, y = bill_depth_mm))

hotel_bookings <- read_csv("R/preview/hotel.csv")
colnames(hotel_bookings)
head(hotel_bookings)
View(hotel_bookings)

ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = criancas))

ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x =stays_in_weekend_nights , y =criancas ))

# 