#Required packages
library(shiny) 
library(miniUI)
myFirstGadget <- function(numbers1,numbers2) 
{ #Mini page only has one title and 2 inpurts I guess.
    ui <- miniPage(
        gadgetTitleBar("My First Gadget"),
        miniContentPanel( #We can pass 1:10,1:10 and so on too. As it accepts a drop down menu.
            selectInput("num1", "First Number", choices=numbers1),
            selectInput("num2", "Second Number", choices=numbers2)
        )
    ) #The server has input, output and server as parameters.
    server <- function(input, output, session) 
    { #Observing an event as we do in actionListener in Java.
        observeEvent(input$done,{ #Converting into numeric and then multiplying.
            num1 <- as.numeric(input$num1)
            num2 <- as.numeric(input$num2)
            stopApp(num1 * num2) #Stopping and multiplying.
        })
    } #Running the Gadget. After telling that the ui is named ui and server is named server.
    runGadget(ui, server)
}