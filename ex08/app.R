#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Review selectInput and sliderInput


# Create a slider in the sidebar with the following parameters:
#  inputId: "height", label: "Height", min: 66, max: 264, value: 264.
# Rerun the shiny app with these updates.


library(shiny)

# Define UI for application that draws a histogram
sidebar <- dashboardSidebar(
  # Add a slider
  sliderInput(
    inputId = "height",
    label = "Height",
    min = 66,
    max = 264,
    value = 264)
)

ui <- dashboardPage(header = dashboardHeader(),
                    sidebar = sidebar,
                    body = dashboardBody()
)

server<-function(input, output){}

shinyApp(ui, server) 