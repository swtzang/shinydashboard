#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Create notification menus


#Create a drop down menu of type notifications and create a notification item.
#Add text to your notification item letting the viewer know "The International Space Station is overhead!".
#Set the new header in the dashboardPage().
#Rerun the shiny app with these updates.


library(shiny)
library(shinydashboard)

header <- dashboardHeader(
  # Create a notification drop down menu
  dropdownMenu(
    type = "notifications",
    notificationItem(
      text = "The International Space Station is overhead!"
    )
  )
)

# Use the new header
ui <- dashboardPage(header = header,
                    sidebar = dashboardSidebar(),
                    body = dashboardBody()
)

server <- function(input, output) {}


shinyApp(ui, server)