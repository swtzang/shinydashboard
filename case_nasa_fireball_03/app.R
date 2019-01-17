#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

#Create a value box for the maximum energy

#Let's create a third value box for the maximum total optical radiated energy. 
#The variable for this in the nasa_fireball data frame is energy. 
#Again, the nasa_fireball data frame is loaded.

#Find the maximum energy and save it as an object called max_energy.
#Create a value box with the value equal to max_energy, 
#subtitle "Maximum total radiated energy (Joules)", and the "lightbulb-o" icon.



library(shiny)
library(shinydashboard)

max_energy <- max(nasa_fireball$energy, na.rm=TRUE)
max_impact_e<-max(nasa_fireball$impact_e, na.rm=TRUE)
max_vel <- max(nasa_fireball$vel, na.rm=TRUE)

body <- dashboardBody(
  fluidRow(
    # Add a value box for maximum energy
    valueBox(
      value = max_energy, 
      subtitle = "Maximum total radiated energy (Joules)",
      icon = icon("lightbulb-o")
    ),
    valueBox(
      value = max_impact_e, 
      subtitle = "Maximum impact energy (kilotons of TNT)",
      icon = icon("star")
    ),
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