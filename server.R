#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(fpp3)
data("tourism")

shinyServer(function(input, output) {

    output$distPlot <- renderPlot({
        t <- tourism %>%filter(Region %in% c("Outback") & Purpose %in% c(input$Purpose))
        autoplot(t)
    })
    
})

