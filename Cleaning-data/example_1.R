skim_without_charts(penguins)
glimpse(penguins)
data_na <- penguins %>%
  select(species, sex)

data_resume <- na.omit(penguins) %>%
  group_by(species, sex) %>%
  summarise(quantidade = n(), .groups = 'drop')

sum_for_specie <- data_resume %>%
  group_by(species) %>%
  summarise(total_por_especie = sum(quantidade), .groups = 'drop')

print("Contagem por sexo:")
print(data_resume)

print("Soma total por espécie:")
print(sum_for_specie)
