# to name and plot columns on X and Y axes
carat_price <- ggplot(data = diamonds,
                      aes(x = carat,
                          y = price,
                          group = color)) + 
  
               geom_point(aes(color = cut)) +# to actualy create a scatter plot 
               facet_wrap(~cut) +# to create different plot for each type of `cut`
               geom_smooth(method = "lm") # adding trend line
               # http://www.cookbook-r.com/Graphs/Scatterplots_(ggplot2)/


carat_price # to print the plot