
library(plotly)
library(ggplot2)

victimisation_data <- read.csv("Victimisation data.csv")




victimisation_data$Year <- factor(victimisation_data$Year, levels = victimisation_data$Year)

ggplot(data = victimisation_data, aes(x=Year, y=Victimisations,group=1)) + 
  geom_line(color = "steelblue") +
  geom_point(color = "blue", size = 1)+
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  xlab("Year") + ylab("Victimisation per Million")
ggplotly()