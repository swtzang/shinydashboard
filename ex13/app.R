#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Create body with row-based layout
# Recall that you can create a dashboard with row-based layout 
# using the fluidRow() function from shiny within the dashboardBody()


#Create Row 1 using fluidRow() and the single box() function in the first code block above.
#Create Row 2 using fluidRow() and the single box() function in the second code block.
#Rerun the shiny app with these updates.

library(shiny)
library(shinydashboard)

body <- dashboardBody(
  fluidRow(
    # Row 1
    box(
      width = 12,
      title = "Regular Box, Row 1",
      "Star Wars"
    )
  ),
  fluidRow(
    # Row 2
    box(
      width = 12,
      title = "Regular Box, Row 2",
      "Nothing but Star Wars"
    )
  )
)


ui <- dashboardPage(header = dashboardHeader(),
                    sidebar = dashboardSidebar(),
                    body = body
)

server<-function(input, output){}
  
shinyApp(ui, server)