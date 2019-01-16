#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

#Create reactive boxes
#In addition to updating the task drop down menus reactively, it is possible to create reactive boxes 
#in the body. Here, you have a clickable action button in your sidebar. 
#You want to update a value box each time the user clicks the action button. 
#The valueBox() function will create a value box in the body. This takes the following form:



#Create a reactive value box called click_box that increases in value each time the user clicks the action button.
#Set the subtitle of the reactive value box to "Click Box".
#Render the reactive value box in the body.
#Rerun the shiny app with these updates.




library(shiny)
library(shinydashboard)

sidebar <- dashboardSidebar(
  actionButton("click", "Update click box")
) 

server <- function(input, output) {
  output$click_box <- renderValueBox({
    valueBox(value = input$click, "Click Box"
    )}
  )
}

body <- dashboardBody(
  valueBoxOutput("click_box")
)


ui <- dashboardPage(header = dashboardHeader(),
                    sidebar = sidebar,
                    body = body
)
shinyApp(ui, server)