#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# create task menus


#Create a drop down menu of type tasks and create a task item.
#Add text to your task item: "Mission Learn Shiny Dashboard" and indicate that the task item is 10% complete.
#Set the new header in the dashboardPage().
#Rerun the shiny app with these updates.



library(shiny)
library(shinydashboard)

# Define UI for application that draws a histogram
header <- dashboardHeader(
  dropdownMenu(
    # Create a tasks drop down menu
    type = "tasks",
    taskItem(
      text = "Mission Learn Shiny Dashboard",
      value = 10
    )
  )
)

# Use the new header
ui <- dashboardPage(header = header,
                    sidebar = dashboardSidebar(),
                    body = dashboardBody())

server <- function(input, output) {}

shinyApp(ui, server)