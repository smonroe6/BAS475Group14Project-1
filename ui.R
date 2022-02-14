#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(

    # Application title
    titlePanel("Group 14"),

    sidebarLayout(
        sidebarPanel(
            selectInput(inputId = "Purpose", 
                        label = "Purpose", 
                        choices = list("Business", "Holiday", "Visiting", "Other"), 
                        selected = 1)
        ),

        mainPanel(
            plotOutput("distPlot")
        )
        
    )
    
))
 
