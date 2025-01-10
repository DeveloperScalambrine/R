ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g, shape = species, color=species))

ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g, alpha = species), color="darkblue")

ggplot(data=penguins)+
  geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g)) +
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g))
  

ggplot(data=penguins)+
  geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g, linetype = species))

ggplot(data=penguins)+
geom_jitter(mapping = aes(x=flipper_length_mm,y=body_mass_g))
  
ggplot(data = diamonds)+
geom_bar(mapping = aes(x=color, fill=cut)) +
  facet_wrap(~cut)


ggplot(data = diamonds)+
  geom_bar(mapping = aes(x=cut, fill=cut))


ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g, alpha = species), color="darkblue") +
  facet_wrap(~species)

ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g, color=species)) +
  facet_grid(sex~species)


ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g, color=species)) +
  facet_grid(~sex)

ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g, color=species)) +
  facet_grid(~species)
