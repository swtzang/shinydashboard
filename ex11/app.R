#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

#Create reactive menu items

#We have added dynamic content via subsetting a data frame based on using input 
#and reading in real-time data. Now we are going to allow the user to input task_data 
#to determine task items. Recall that we can use an apply() function to iterate 
#over a data frame, applying the taskItem() function to each row.

#Create a list of tasks called tasks from the task_data data frame, like in the code chunk provided.
#Create the task drop down menu from your tasks list.
#Output a reactive task menu to output$task_menu and render the newly created reactive task menu in the dashboardHeader().
#Rerun the shiny app with these updates

library(shiny)
library(shinydashboard)

text<-c("find 20 hidden mickeys on the Tower of Terror",
        "Find a paint brush on Tom Sawyer Island",  
        "Meet Chewbacca")
value<-c(60, 0, 100)

task_data<-data.frame(text, value)

server <- function(input, output) {
  output$task_menu <- renderMenu({
    tasks <- apply(task_data, 1, function(row) {
      taskItem(text = row[["text"]],
               value = row[["value"]])
    })
    
    dropdownMenu(type = "tasks", .list = tasks)
  })
}

header <- dashboardHeader(dropdownMenuOutput("task_menu"))

ui <- dashboardPage(header = header,
                    sidebar = dashboardSidebar(),
                    body = dashboardBody()
)
shinyApp(ui, server)