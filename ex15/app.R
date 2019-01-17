#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

#Add some life to your layouts

#In this exercise you'll jazz up a shinydashboard by adding some color. 
#There's a dashboard with three different boxes already written for you. 
#All you have to do is make the indicated changes to the boxes.

#It might be useful to know that some valid statuses and their corresponding colors are:
  
#primary Blue (sometimes dark blue)
#success Green
#info Blue
#warning Orange
#danger Red


library(shiny)
library(shinydashboard)


body <- dashboardBody(
  tags$head(
    tags$style(
      HTML('
           h3 {
           font-weight: bold;
           }
           ')
      )
      ),
  fluidRow(
    box(
      width = 12,
      title = "Regular Box, Row 1",
      "Star Wars, nothing but Star Wars",
      # Make the box red
      status = "danger"
    )
  ),
  fluidRow(
    column(width = 6,
           infoBox(
             width = NULL,
             title = "Regular Box, Row 2, Column 1",
             subtitle = "Gimme those Star Wars",
             # Change the icon to a star
             icon = icon("star")
           )
    ),
    column(width = 6,
           infoBox(
             width = NULL,
             title = "Regular Box, Row 2, Column 2",
             subtitle = "Don't let them end",
             # Make the box yellow
             color = "yellow"
           )
    )
  )
      )

ui <- dashboardPage(
  skin = "purple",
  header = dashboardHeader(),
  sidebar = dashboardSidebar(),
  body = body)

server<-function(input, output){}

shinyApp(ui, server)