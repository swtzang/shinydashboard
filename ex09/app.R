#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

#Reactive expression practice

#Using the dplyr starwars dataset, create a shiny app that allows the user to select a 
#character by name and output the selected name in the body. The data frame is 
#already loaded as starwars.

#Create a select list in the Sidebar where the choices are the characters' name with:
#    inputId: "name", label: "Name", choices: starwars$name.
#    Output the name selected in the body using the renderText() and textOutput() functions. 
#    Use the output ID "name".
#    Rerun the shiny app with these updates.

library(shiny)
library(shinydashboard)
library(dplyr)

sidebar <- dashboardSidebar(
  # Create a select list
  selectInput(inputId = "name", 
              label = "Name",
              choices = starwars$name
  )
)

body <- dashboardBody(
  textOutput("name")
)

ui <- dashboardPage(header = dashboardHeader(),
                    sidebar = sidebar,
                    body = body
)

server <- function(input, output) {
  output$name <- renderText({
    input$name
  })
}

shinyApp(ui, server)