

library(readr)
library(shiny)
library(ggplot2)

# Input data file

crime_data <- read_csv(file ="crime values final1.csv" )
colnames(crime_data) <- c("Type.of.crimes",1980:2021)
ui <- fluidPage(
  titlePanel("Crime by Year"),
 
  sliderInput(inputId = "year", label = "Choose the year", value = 2008, 
              min = 1980, max = 2022 ),
  
  # Create a spot for the barplot
  mainPanel(
    plotOutput("graphplot")
  ),

)

server <- function(input, output) {
  
  output$graphplot <- renderPlot({
   
  
  barplot(crime_data[,3])
    
 
      })
 
}
shinyApp(ui, server)


#  ggplot(crime_data, aes(y= crime_data$X1984 , x= crime_data$Type.of.crimes)) + geom_bar(stat = 'identity', fill = 'blue') + 
#theme(axis.text.x = element_text(angle = 45, hjust = 1)) + 
  #labs(x="Crimes", y="Year") + ylim(0, 100000)
