#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#


# Create Sidebar tabs


#Use the sidebarMenu() to create a tab with text = "Dashboard" and tabName = "dashboard".
#Create tab with text = "Inputs" and tabName = "inputs".
#Use the new sidebar in the dashboardPage().
#Rerun the shiny app with these updates.



library(shiny)
library(shinydashboard)

sidebar <- dashboardSidebar(
  sidebarMenu(
    # Create two `menuItem()`s, "Dashboard" and "Inputs"
    menuItem(text = "Dashboard",
             tabName = "dashboard"
    ), 
    menuItem(text = "Inputs", 
             tabName = "inputs"
    )
  )
)

# Use the new sidebar
ui <- dashboardPage(header = dashboardHeader(),
                    sidebar = sidebar,
                    body = dashboardBody()
)

server<-function(input, output){}

shinyApp(ui, server)