#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Create a value box for the maximum velocity
#Now you can begin building your dashboard! First, create a value box for the 
#maximum velocity of a fireball at peak brightness (the variable vel in your 
#nasa_fireball data frame). There are many ways to find the maximum value in R; 
#be sure to remove NA values when doing so. 

#Find the maximum velocity and save it as an object called max_vel.
#Create a value box with the value equal to max_vel, subtitle 
#"Maximum pre-impact velocity", and "fire" icon.
#Run the shiny dashboard to view your work.



library(shiny)
library(shinydashboard)

load(file = "~/shinydashboard/nasa_fireball.rda")

max_vel <- max(nasa_fireball$vel, na.rm=TRUE)

body <- dashboardBody(
  fluidRow(
    # Add a value box for maximum velocity
    valueBox(
      value = max_vel, 
      subtitle = "Maximum pre-impact velocity", 
      icon = icon("fire")
    )
  )
)
ui <- dashboardPage(header = dashboardHeader(),
                    sidebar = dashboardSidebar(),
                    body = body
)

server<-function(input, output){}

shinyApp(ui, server)
