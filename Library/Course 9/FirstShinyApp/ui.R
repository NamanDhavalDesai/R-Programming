library(shiny)

shinyUI
(
    fluidPage
    ( #Fluid Page that describes the page which helps us to create our user interface.
        titlePanel("My First Web Application"), #This is how you set up the title. We place a , as the next block is just a continuity.
        #Fluid Page has two components the sidebarLayout -> sidebarPanel and the mainPanel and both these blocks of code have a , in between.
        sidebarLayout
        ( #We place the 2 conmponents we discussed about ablove within sidebarLayout.
            sidebarPanel
            ( #h5 is that HTML code.
                h5("Input value"), 
                sliderInput("data","integer",0,10,5),
                submitButton("Submit")
            ),
            mainPanel
            (
                h3("Square Program"),
                code("import java.util.*"),
                br(),
                code("class one"),
                br(),
                code("{"),
                br(),
                code("public static void main(String args[])"),
                br(),
                code("{"),
                br(),
                code("Scanner ob=new Scanner(System.in);"),
                br(),
                code('System.out.println("Input Value");'),
                br(),
                code('int data=ob.nextInt();'),
                br(),
                code('System.out.println("Output Value");'),
                br(),
                code('System.out.println(data*data);'),
                br(),
                code('}'),
                br(),
                code('}'),
                br(),
                h5("Output value"),
                textOutput("data")
            )
        )
    )
)