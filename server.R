#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
    nms <- data.frame(c('Name1', 'Name2'))

    status <- reactiveVal()
    step <- reactiveVal()
    
    autoInvalidate <- reactiveTimer(700)

    i <- 0
    observe({
      autoInvalidate()
      i <<- i+1
      if(i==10) autoInvalidate <<- reactiveTimer(Inf)
      step(i)
      status(nms[i %% 2 + 1,])
    })
        
    output$scrollingtext <- renderText({
      step()
      status()
    })

})
