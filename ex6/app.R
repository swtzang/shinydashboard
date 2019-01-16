#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Create tab boxes


#Add a tabBox() to the dashboard tabItem().
#Add a title to the tabBox() "International Space Station Fun Facts".
#Add two tabPanel()s to the tabBox() named "Fun Fact 1" and "Fun Fact 2".
#Rerun the shiny app with these updates.


library(shiny)


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


body <- dashboardBody(
  # Create a tabBox
  tabBox(
    title = "International Space Station Fun Facts",
    tabPanel("Fun Fact 1"),
    tabPanel("Fun Fact 2")
  )
)

ui <- dashboardPage(header = dashboardHeader(),
                    sidebar = sidebar,
                    body = body
)

server<-function(input, output){}

shinyApp(ui, server)