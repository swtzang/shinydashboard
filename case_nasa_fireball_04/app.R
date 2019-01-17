#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

#Make the value boxes dynamic

#The data frame contains the latitude and longitude of the location of the fireballs. 
#Begin to build a dynamic value box containing the number of fireballs in the US. 
#The approximate range of latitude for US cities is 19.5 to 64.9 and the range for 
#longitude is -161.8 to -68.0. Count the number of fireballs in the current data frame 
#that fall within this range. This count can be obtained a variety of ways in R. 
#You may use the code below, or write you own and check it with the one provided.

#Create the object n_us indicating how many fireballs have landed in the US. 
#You can use the code provided in the first chunk above to do this.
#Create a dynamic value box using renderValueBox() and valueBox() with n_us as the value, 
#"Number of Fireballs in the US" as the subtitle, and the "globe" icon.
#Add the parameter color to the value box, if the number of fireballs in the US is 
#less than 10, make it "blue", otherwise make it "fuchsia".




library(shiny)
library(shinydashboard)

#load("~/shinydashboard/nasa_fireball.rda")

n_us <- sum(
  ifelse(
    nasa_fireball$lat < 64.9 & nasa_fireball$lat > 19.5
    & nasa_fireball$lon < -68.0 & nasa_fireball$lon > -161.8,
    1, 0),
  na.rm = TRUE)

server <- function(input, output) {
  output$us_box <- renderValueBox({
    valueBox(
      value = n_us,
      subtitle = "Number of Fireballs in the US",
      icon = icon("globe"),
      color = if (n_us < 10) {
        "blue"
      } else {
        "fuchsia"
      }
    )
  })
}

body <- dashboardBody(
  fluidRow(
    valueBoxOutput("us_box")
  )
)

ui <- dashboardPage(header = dashboardHeader(),
                    sidebar = dashboardSidebar(),
                    body = body
)

shinyApp(ui, server)