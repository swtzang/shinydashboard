#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

#Create a value box for the maximum impact

#Let's add another value box for the maximum log total impact energy. 
#The variable in the nasa_fireball data frame corresponding to this is impact_e. 
#The nasa_fireball data frame is again already loaded.

#Find the maximum impact and save it as an object called max_impact_e.
#Create a value box with the value equal to max_impact_e, 
#subtitle "Maximum impact energy (kilotons of TNT)", and the "star" icon.



library(shiny)
library(shinydashboard)


max_impact_e <- max(nasa_fireball$impact_e, na.rm=TRUE)

body <- dashboardBody(
  fluidRow(
    # Add a value box for maximum impact
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