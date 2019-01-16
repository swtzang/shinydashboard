#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
library(shiny)
library(shinydashboard)

header <- dashboardHeader()
sidebar <- dashboardSidebar()
body <- dashboardBody()
library(shiny)
# Create the UI using the header, sidebar, and body
ui <-dashboardPage(header, sidebar, body) 

server <- function(input, output) {}

shinyApp(ui, server)