library(shiny)
shinyServer #No inputs to no outputs.
(
    function(input, output)
    {
        output$data=renderText(input$data*input$data)
    }
)