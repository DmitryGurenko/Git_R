filtered_tg <- filter(ToothGrowth, dose==0.5) #filtering
filtered_sorted_tg <- arrange(filtered_tg, len) #sorting

# OR using nested functions
arrange(filter(ToothGrowth, dose==0.5), len)

# OR using a pipeline
filtered_tg <- ToothGrowth %>% 
  filter(dose > 0.5 & dose < 2) %>% 
  group_by(supp) %>% 
  summarise(mean_len = mean(len, na.rm = T),.groups = "keep")
  #arrange(len)

View(filtered_tg)