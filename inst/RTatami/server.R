# This is the server logic of a Shiny web application. You can run the application by clicking 'Run App' above.  Find
# out more about building applications with Shiny here: http://shiny.rstudio.com/

library(shiny)

# Define server logic required to draw a histogram
#'Plot the conversion map.
shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        square_meters = seq(0, 1000, length.out = 100)
        jos = convertSquareMeterToJapaneseJo(square_meters)

        plot(y = jos, x = square_meters, type = "l")
        abline(v = input$current_square_meter, col = "gray", lty = 2)
        abline(h = convertSquareMeterToJapaneseJo(input$current_square_meter), col = "gray", lty = 2)

    })

})
