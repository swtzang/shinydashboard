#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Create body with column-based layout

# Create body with mixed layout
# In addition to having layouts specified using rows and columns, 
# we can have mixed layouts that combine the two. 


library(shiny)
library(shinydashboard)


body <- dashboardBody(
  fluidRow(
    # Row 1
    box(
      width = 12,
      title = "Regular Box, Row 1",
      "Star Wars, nothing but Star Wars"
    )
  ),
  fluidRow(
    # Row 2, Column 1
    column(width = 6,
           infoBox(
             width = NULL,
             title = "Regular Box, Row 2, Column 1",
             subtitle = "Gimme those Star Wars"
           )
    ),
    # Row 2, Column 2
    column(width = 6,
           infoBox(
             width = NULL,
             title = "Regular Box, Row 2, Column 2",
             subtitle = "Don't let them end"
           )
    )
  )
)

ui <- dashboardPage(header = dashboardHeader(),
                    sidebar = dashboardSidebar(),
                    body = body
)
server<-function(input, output){}
shinyApp(ui, server)