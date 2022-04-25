library(shiny)
library(shinyjs)
datos = iris
datos2 = cars
shinyServer(function(input, output) {
    showPlot = reactiveVal(FALSE)
    shinyjs::hide(id = "selectPlot")
    output$distPlot <- renderPlot({
        if(showPlot()){
            if(input$selectPlot == "iris"){
                plot(datos$Sepal.Length, datos$Sepal.Width)
            }else if(input$selectPlot == "cars"){
                plot(datos2$speed, datos2$dist)
            }
            
        }
    })
    
    observeEvent(input$button, {
        showPlot(!showPlot())
        print(showPlot())
        shinyjs::toggle(id = "selectPlot")
        
    })
    
})
