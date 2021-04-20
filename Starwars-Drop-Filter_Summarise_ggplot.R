starwars_c <- starwars %>%
  drop_na(sex) %>% 
  filter(mass < 1000) 
  
starwars_stat <- starwars_c %>% 
  group_by(sex) %>% 
  summarise(mean(height), sd(height), mean(mass), sd(mass), cor=cor(height,mass))

ggplot(data = starwars_c,
       aes(x = height,
           y = mass)) +
  geom_point(aes(color = sex), size = 3) +
  stat_smooth(aes(color = sex), method = "lm", se = F, formula = y ~ x) +
  geom_density2d_filled(alpha = 0.5) +
  stat_cor(aes(color = sex), digits=2, p.accuracy=0.01, method="pearson", size = 5) 
  
ggplot(data = starwars_c) +
  geom_bar(aes(x=eye_color, color = eye_color))
 

  