hotel_bookings <- read_csv("R/preview/hotel.csv")

ggplot(data=hotel_bookings) +
  geom_bar(mapping = aes(x=distribution_channel, fill = deposit_type))

ggplot(data=hotel_bookings) +
  geom_bar(mapping = aes(x=distribution_channel, fill = market_segment))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x=distribution_channel)) +
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))


ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x=distribution_channel)) +
  facet_wrap(~market_segment) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_grid(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment)) 

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap(~market_segment)

onlineta_city_hotels <- filter(hotel_bookings, 
                               (hotel=="City Hotel" &
                                  hotel_bookings$market_segment=="Online TA"))

View(onlineta_city_hotels)

mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)

# grafico salvo para futuras apresentações
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel)+
  theme(axis.text.x = element_text(angle = 45))+
  labs(title = "Which segment and which type of hotel is most sought after", caption = paste0("Data of: ", mindate, " a ", maxdate),
       x="Market Segment",
       y="Number of Bookings")
ggsave('hotel_booking_chart.png')

ggplot(data = onlineta_city_hotels) +
  geom_point(mapping = aes(x = lead_time, y = criancas))

# examples working title, subtitle and caption 

ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g, color=species))+
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguins species", caption = "Data collected by Dr. Kristen Gorman")+
  annotate("text", x=220,y=3500,label="The Gentoos are the largest", color="purple",fontface="bold",size=4.5, angle=25)

# armazenando o grafico em uma variavel 
p <- ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g, color=species))+
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguins species", caption = "Data collected by Dr. Kristen Gorman")+
  annotate("text", x=220,y=3500,label="The Gentoos are the largest", color="purple",fontface="bold",size=4.5, angle=25)


# reutilizando o grafico pela variavel
p+annotate("text", x=220,y=3500,label="The Gentoos are the largest", color="green",fontface="bold",size=4.5, angle=30)



