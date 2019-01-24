#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

#Read in real-time data

# One benefit of a dashboard is the ability to examine real-time data. In shiny, this can be 
# done using the reactiveFileReader() or reactivePoll() functions from the shiny package. 
# For example, if we had our data saved as a .csv, we could read it in using reactiveFileReader() 
# along with the readFunc set to read.csv.

#data<-read.csv("~/shinydashboard/ex10/starwars_url.csv")

library(shiny)
library(shinydashboard)
#starwars_url = "http://s3.amazonaws.com/assets.datacamp.com/production/course_6225/datasets/starwars.csv"
#data<-read.csv("~/shinydashboard/ex10/starwars_url.csv")

server <- function(input, output, session) {
  reactive_starwars_data <- reactiveFileReader(
    intervalMillis = 1000,
    session = session,
    #filePath = "~/shinydashboard/ex10/starwars_url.csv",
    filePath = "starwars_url.csv",
    #readFunc = function(filePath) {read.csv(url(filePath))}
    readFunc = read.csv
  )
  
  output$table <- renderTable(reactive_starwars_data)
}

body <- dashboardBody(
  tableOutput("table")
)

ui <- dashboardPage(header = dashboardHeader(),
                    sidebar = dashboardSidebar(),
                    body = body
)


shinyApp(ui, server)