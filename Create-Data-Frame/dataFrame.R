View(diamonds)
view(data)

# Criando um dataset a partir de um ja criado
# e adicionando uma coluna com a função mutate
data <- mutate(diamonds, color_ext='green')
view(data)

# Criando um dataset do zero não é uma 
# boa pratica usar o print
names <- c("João", "Sophia", "Pedro", "Sarah")
age <- c(17, NA, 11, 7 )
people = data_frame(names, age) 
view(na.omit(people))
view(mutate(people, age_in_20 = age + 20))


# Importando dataset do tipo csv
dados_resorts <- 
read_csv("/home/henrique/R/Create-Data-Frame/hotel.csv")
cleaned_criancas <- (na.omit(dados_resorts))
 total_person <- cleaned_criancas %>%
   summarise(adult = sum(adultos),
             children = sum(criancas),
             baby = sum(bebe))
 total_ger <- sum(total_person)

 
formatted_total <- pivot_longer(total_person, cols = everything(),
                                names_to = "type_person",
                                values_to = 'amount')
 
  
  ggplot(formatted_total, aes(x = "", y = amount, fill = type_person)) +
  geom_col() +
  geom_hline(yintercept = mean(formatted_total$amount), color = "red", linetype = "dashed") +
  geom_text(aes(label = amount), vjust = -0.5, color = "white", size = 3) +
    
  labs(x = "", y = "Amount", title = "Amount for type of person",
       subtitle = paste("Total of Person:", total_ger)) +
  scale_fill_manual(values = c("Blue", "Green", "Pink"),
                    name = "Type of Person",
                    labels = c("Adultos" = "Adultos", "Crianças" = "Crianças", "Bebês" = "Bebês")) +
    theme_classic() +
    theme_minimal() +
    theme_dark()
    theme(plot.subtitle = 
            element_text(hjust = 0.5, size = 12),
          plot.title = element_text(hjust = 0.5, size = 18))

  