library(plotly)
library(shiny)
mdc <- mtcars
mdc$am <- factor(mdc$am, labels = c("Automatic", "Manual"))
shinyServer(function(input, output) {
  
  ftc <- reactive({
    paste("Milespgc vs ", input$variable)
  })
  
  output$caption <- renderText({
    ftc()
  })
  output$mpgPlot <- renderPlot({
    ggplot(mdc, aes_string(y=input$variable, x="mpg")) + geom_point()
  })
  
})