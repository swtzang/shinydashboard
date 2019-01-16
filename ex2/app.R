#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Create message menus

# Add a second message to the dropdownMenu() using the messageItem() function.
# Include the following message text "Learn more about the International Space Station" 
# and link to the International Space Station FAQ: https://spotthestation.nasa.gov/faq.cfm.
# Set the new header in the dashboardPage().
# Rerun the shiny app with these updates.





library(shiny)
library(shinydashboard)

header <- dashboardHeader(
  dropdownMenu(
    type = "messages",
    messageItem(
      from = "Lucy",
      message = "You can view the International Space Station!",
      href = "https://spotthestation.nasa.gov/sightings/"
    ),
    # Add a second messageItem() 
    messageItem(
      from = "Lucy",
      message = "Learn more about the International Space Station",
      href = "https://spotthestation.nasa.gov/faq.cfm"
    )
  )
)

ui <- dashboardPage(header = header,
                    sidebar = dashboardSidebar(),
                    body = dashboardBody()
)

server <- function(input, output) {}

shinyApp(ui, server)