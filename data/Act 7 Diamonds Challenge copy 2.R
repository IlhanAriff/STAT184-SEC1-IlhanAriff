install.packages("ggplot2")

library(ggplot2)
library(dplyr)

data("diamonds")

View(diamonds)

diamonds %>%
  group_by(cut) %>%
  summarize(
    count=n(),
    x_min=min(x), x_q1=quantile(x,0.25), x_median=median(x), x_q3=quantile(x,0.75), 
    x_max=max(x), x_mad=mad(x), x_mean=mean(x), x_sd=sd(x),
    
    y_min=min(y), y_q1=quantile(y,0.25), y_median=median(y), y_q3=quantile(y,0.75),
    y_max=max(y), y_mad=mad(y), y_mean=mean(y), y_sd=sd(y),
    
    z_min=min(z), z_q1=quantile(z,0.25), z_median=median(z), z_q3=quantile(z,0.75),
    z_max=max(z), z_mad=mad(z), z_mean=mean(z), z_sd=sd(z),
  )

# Filter the diamonds data for "Fair" cut diamonds
fair_diamonds <- diamonds %>%
  filter(cut == "Premium")

# Find the maximum value of the x dimension for "Fair" cut diamonds
max_x_fair <- max(fair_diamonds$x)

# Print the result
max_x_fair

