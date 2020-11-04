library(shiny)
shinyUI(fluidPage(
  
  titlePanel("Chandrasekhar's Dataset - Miles per Gallon"),
  
  sidebarPanel(
    
    selectInput("variable", "Variable:", 
                c("Chandrasekhar's Cyl" = "cyl",
                  "Chandrasekhar's Automatic" = "am",
                  "Gears of Chandrasekhar" = "gear"))
  ),
  
  mainPanel(
    h2(textOutput("caption")),
    # Welcome to Chandrasekhar's Graph app.

    plotOutput("mpgPlot")
  )
))