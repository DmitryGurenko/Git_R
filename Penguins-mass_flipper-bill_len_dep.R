mass_flipper <- ggplot(data = penguins,
                       aes(x = flipper_length_mm,
                           y = body_mass_g,
                           group = species)) +
  geom_point(aes(color = species,
                 shape = species),
             size = 3,
             alpha = 0.8) +
  theme_minimal() +
  scale_color_manual(values = c("darkorange","purple","cyan4")) +
  labs(title = "Penguin size, Palmer Station LTER",
       subtitle = "Flipper length and body mass for Adelie, Chinstrap and Gentoo Penguins",
       x = "Flipper length (mm)",
       y = "Body mass (g)",
       color = "Penguin species",
       shape = "Penguin species") +
  theme(legend.position = c(0.2, 0.7),
        legend.background = element_rect(fill = "white", color = NA),
        plot.title.position = "plot",
        plot.caption = element_text(hjust = 0, face= "italic"),
        plot.caption.position = "plot")

mass_flipper

# bill_len_dep <- ggplot(data = penguins,
#                        aes(x = bill_length_mm,
#                            y = bill_depth_mm,
#                            group = species)) +
#   geom_point(aes(color = species,
#                  shape = species),
#              size = 3,
#              alpha = 0.8) +
#   geom_smooth(method = "lm", se = FALSE, aes(color = species)) +
#   stat_cor(aes(color = species), digits=2, p.accuracy=0.01, method="pearson", size = 6) 
#   theme_minimal() +
#   scale_color_manual(values = c("darkorange","purple","cyan4")) +
#   labs(title = "Penguin bill dimensions",
#        subtitle = "Bill length and depth for Adelie, Chinstrap and Gentoo Penguins at Palmer Station LTER",
#        x = "Bill length (mm)",
#        y = "Bill depth (mm)",
#        color = "Penguin species",
#        shape = "Penguin species") +
#   theme(legend.position = c(0.85, 0.15),
#         legend.background = element_rect(fill = "white", color = NA),
#         plot.title.position = "plot",
#         plot.caption = element_text(hjust = 0, face= "italic"),
#         plot.caption.position = "plot")
# 
# bill_len_dep