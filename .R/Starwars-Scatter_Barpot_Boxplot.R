starwars_c <- starwars %>%
  drop_na(sex) %>% 
  filter(mass < 1000) 
n_heroes <- nrow(starwars_c)
  
starwars_stat <- starwars_c %>% 
  group_by(sex) %>% 
  summarise(mean(height), sd(height), mean(mass), sd(mass), cor=cor(height,mass))

#Bar
ggplot(data = starwars_c) +
  geom_bar(aes(x=sex, fill = eye_color)) + facet_wrap(~eye_color) +
  theme(axis.text.x = element_text(angle = 0)) # changing label's angle

#Scatter
ggplot(data = starwars_c,
       aes(x = height,
           y = mass)) +
  geom_point(aes(color = sex), size = 3) +
  stat_smooth(aes(color = sex, linetype=sex), method = "lm", se = F, formula = y ~ x) +
  # (...or method = "loess") - for smoothing plots with less than 1000 points.
  geom_density2d_filled(alpha = 0.5) + #Bivariate Distribution
  stat_cor(aes(color = sex), digits=2, p.accuracy=0.01, method="pearson", size = 5) +
  #facet_grid(~sex~gender) # dividing results on Matrice with N:n plots
  labs(title = "SW: Body Mass vs. Height", subtitle = "Male - Female - Not Specified",
       caption = paste0("Based on ", n_heroes, " heroes"), x="Height",y="Weight") +
  annotate("text", x=215, y=72, label = "well stacked", color = "orange",
           fontface = "bold", size = 4.5, angle=-10)
  

#Boxplot
ggplot(data = starwars_c,
       aes(x = sex,
           y = height)) +
  geom_boxplot()

#ggsave("name", width = , height = )
