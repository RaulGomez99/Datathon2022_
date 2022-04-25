library(shiny)
library(shinyjs)
shinyUI(fluidPage(
    titlePanel("Trabajo Datathon"),
    sidebarLayout(
        sidebarPanel(
            actionButton(inputId = "button", label = "Mostrar grafico")
        ),
         mainPanel(
             conditionalPanel(condition = 'input.button%2==1',
                              radioButtons("selectPlot", "Selecciona grafico",
                                           c("Iris" = "iris",
                                             "Cars" = "cars"))
                              ),

             plotOutput("distPlot")
         )
    )
))
