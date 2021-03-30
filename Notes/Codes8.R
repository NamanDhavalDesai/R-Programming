#My code notes 8.
#Develouping Data Products With R.

#A web application framework for R.
#A Shiny server is required to host a shiny app for the world. Otherwise, only those who have have shiny installed and have access to your code could run your web page (really defeating the purpose of making a web page in the first place).
#Can be used on a platform called shinyapps.io.
#Shinyapps.io is free up to a point in that you can only run 5 apps for a certain amount of time per month.

#A shiny project is a directory containing atleast two files.
#1)ui.R - For the user interface to control how you want your app to look.
#2)server.R - To control what your app does.

#To create a shiny application, we go to file -> new file -> shiny web application.
#After this the ui.R file will have a shinyUI function in which we place the interface commands.
#In the server.R package we have a function shinyServer.R in which we enter the function or the backend of the application.

#Not only heading (h) tags we have other tags too like a, div, span, p, etc.
#?builder gives the list. **br() to end line.**

#Example 1
library(shiny)
#ui.R
shinyUI
(
    fluidPage
    ( #Fluid Page that describes the page which helps us to create our user interface.
        titlePanel("My First Web Application"), #This is how you set up the title. We place a , as the next block is just a continuity.
        #Fluid Page has two components the sidebarLayout -> sidebarPanel and the mainPanel and both these blocks of code have a , in between.
        sidebarLayout
        ( #We place the 2 conmponents we discussed about ablove within sidebarLayout.
            sidebarPanel
            ( #h3 is that HTML code.
                h3("Sidebar Panel Text")
            ),
            mainPanel
            (
                h3("Main Panel Text")
            )
        )
    )
)
#server.R
shinyServer #No inputs to no outputs.
(
    function(input, output){}
)
#To run this localy we can just click RunApp or setwd(""); by alt-s,w,enter add the path(file) and then place runApp(); or simply runApp(#Place the path here);

#Example 2
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
                sliderInput("data","integer",0,10,5) #Input taken from slider -> data and this is how to add the sliders. 
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
                textOutput("data") #Output is printed like this they have to have the same name.
            )
        )
    )
)
library(shiny)
shinyServer #No inputs to no outputs.
(
    function(input, output)
    { # Output data and input data can be called and then in between rendered like this.
        output$data=renderText(input$data*input$data)
    }
)

# Within brackets we put plot commands with input$data
output$data=renderPlot()
plotOutput(data)
#In this same way we can have different things like plots and all too.
sliderInput("data","integer",0,10,c(-5,5))
#We can have double value sliders too but thennin server.io we will have to add input$data[1]

#If we need to re run the code after changing the data in textfields then we need to place them in a reactive statement.
calc_sum<-reactive({
    #input$box1+input$box2 such commands.
})
calc_sum()
#Simply instead of functions we use reactive statements.

#We can use this button to prevent the functions from automatically executing.
submitButton("Submit")

#Now if we want diffrenet tabs in one tab we can use,
mainPanel(
    tabsetPanel(
        type = "tabs",
            tabPanel("Tab 1",br(),textOutput("o_1")),
            tabPanel("Tab 2",br(),textOutput("o_2"))
    )
)
#This way we have different tabs. To show different outputs.

#Example 3
#This is how we use the App instead of using the dual file method.
library(shiny)
Server <- function(input, output) 
{
    model <- reactive({ #We are using brushed points from the trees data set. brush1 is the input variable. It is the brushOpts id. It just chooses the points.
        brushed_data <- brushedPoints(trees, input$brush1, xvar = "Girth", yvar = "Volume") #BrushedPoints selects the data points. Returns a dataset.
        if(nrow(brushed_data) < 2)
            return(NULL)
        lm(Volume ~ Girth, data = brushed_data)
    })
    output$slopeOut <- renderText({
        if(is.null(model()))
            "No Model Found"
        else 
            model()[[1]][2]
    })
    output$intOut <- renderText({
        if(is.null(model()))
            "No Model Found"
        else 
            model()[[1]][1]
    })
    output$plot1 <- renderPlot({
        plot(trees$Girth, trees$Volume, xlab = "Girth", ylab = "Volume", main = "Tree Measurements", cex = 1.5, pch = 16, bty = "n")
        if(!is.null(model()))
            abline(model(), col = "blue", lwd = 2)
    })
}
ui <- fluidPage(
    titlePanel("Visualize Many Models"),
    sidebarLayout(
        sidebarPanel(
            h3("Slope"),
            textOutput("slopeOut"),
            h3("Intercept"),
            textOutput("intOut")
        ),
        mainPanel(
            plotOutput("plot1", brush = brushOpts(
                id = "brush1" #Here brush1 is the input parameter.
            ))
        )
    )
)
#As we see ui is the ui page and server is the Server function.
shinyApp(ui = ui, server = Server)

#Shiny Gadgets
#Explaining with an example:
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

#Google Vis.
#To embed this we need to use results=asis.
#This is how we show dynamic charts.
suppressPackageStartupMessages(library(googleVis))
M <- gvisMotionChart(Fruits, "Fruit", "Year",
                     options=list(width=600, height=400))
plot(M)
print(M,"chart")

#We can have different google visualizations too.
#* Motion charts:  `gvisMotonChart`
#* Interactive maps: `gvisGeoChart`
#* Interactive tables: `gvisTable`
#* Line charts: `gvisLineChart`
#* Bar charts: `gvisColumnChart`
#* Tree maps: `gvisTreeMap`

#We can use maps like,
#See the valiables properly.
G <- gvisGeoChart(Exports, locationvar="Country",
                  colorvar="Profit",options=list(width=600, height=400))
plot(G)
#We can chose the region like,
G2 <- gvisGeoChart(Exports, locationvar="Country",
                   colorvar="Profit",options=list(width=600, height=400,region="150"))
plot(G2)
#There are plenty other options which we can see here.
#https://developers.google.com/chart/interactive/docs/gallery/geochart

#We can make line charts using,
#Here all teh options are set and used.
df <- data.frame(label=c("US", "GB", "BR"), val1=c(1,3,4), val2=c(23,12,32))
Line <- gvisLineChart(df, xvar="label", yvar=c("val1","val2"),
                      options=list(title="Hello World", legend="bottom",
                                   titleTextStyle="{color:'red', fontSize:18}",                         
                                   vAxis="{gridlines:{color:'red', count:3}}",
                                   hAxis="{title:'My Label', titleTextStyle:{color:'blue'}}",
                                   series="[{color:'green', targetAxisIndex: 0}, 
                         {color: 'blue',targetAxisIndex:1}]",
                                   vAxes="[{title:'Value 1 (%)', format:'##,######%'}, 
                                  {title:'Value 2 (\U00A3)'}]",                          
                                   curveType="function", width=500, height=300                         
                      ))
plot(Line)

#We can merge them using,
G <- gvisGeoChart(Exports, "Country", "Profit",options=list(width=200, height=100))
T1 <- gvisTable(Exports,options=list(width=200, height=270))
M <- gvisMotionChart(Fruits, "Fruit", "Year", options=list(width=400, height=370))
GT <- gvisMerge(G,T1, horizontal=FALSE)
GTM <- gvisMerge(GT, M, horizontal=TRUE,tableOptions="bgcolor=\"#CCCCCC\" cellspacing=10")

#Plotly
#Plotly helps in creating, visualizing and sharing data visualizations.
library(plotly)
plot_ly(mtcars, x = ~wt, y = ~mpg, type = "scatter")
#This is how we can use plot_ly.

#We can have 3-D plots too.
temp <- rnorm(100, mean = 30, sd = 5)
pressue <- rnorm(100)
dtime <- 1:100
plot_ly(x = ~temp, y = ~pressue, z = ~dtime, type = "scatter3d", color = ~temp)

#This is how we can make interactive line plots.
library(plotly)
library(tidyr)
library(dplyr)
data("EuStockMarkets")
stocks <- as.data.frame(EuStockMarkets) %>%
    gather(index, price) %>%
    mutate(time = rep(time(EuStockMarkets), 4))
plot_ly(stocks, x = ~time, y = ~price, color = ~index, type = "scatter", mode = "lines")

#We can have histograms too.
plot_ly(x = ~precip, type = "histogram")

#We can have boxplots too.
plot_ly(iris, y = ~Petal.Length, color = ~Species, type = "box")

#We can have heatmaps too.
terrain1 <- matrix(rnorm(100*100), nrow = 100, ncol = 100)
plot_ly(z = ~terrain1, type = "heatmap")

#We can have 3-D surfacing too.
terra <- matrix(sort(rnorm(100*100)), nrow = 100, ncol = 100)
plot_ly(z = ~terra, type = "surface")

#Choropleth Maps:
#Choropleth maps illustrate data across geographic areas by shading regions with different colors. Choropleth maps are easy to make with Plotly though they require more setup compared to other Plotly graphics.
# Create data frame
state_pop <- data.frame(State = state.abb, Pop = as.vector(state.x77[,1]))
# Create hover text
state_pop$hover <- with(state_pop, paste(State, '<br>', "Population:", Pop))
# Make state borders white
borders <- list(color = toRGB("red"))
# Set up some mapping options
map_options <- list(
    scope = 'usa',
    projection = list(type = 'albers usa'),
    showlakes = TRUE,
    lakecolor = toRGB('white')
)
#Code for the plot.
plot_ly(z = ~state_pop$Pop, text = ~state_pop$hover, locations = ~state_pop$State, 
        type = 'choropleth', locationmode = 'USA-states', 
        color = state_pop$Pop, colors = 'Blues', marker = list(line = borders)) %>%
    layout(title = 'US Population in 1975', geo = map_options)

#We can have ggplots and make them plotly.
#We first neef to create the ggplot and store it in a variable.
#Then say that teh variable is named p then gg<-ggplotly(p) will give you the plotly of the ggplot in gg.
gg<-ggplotly(p)

#R Markdown
#We can have slides in markdown tooby opting for slides after chosing markdown.
#All the other things remain the same.
#Double hash for new slide with title and *** for slide with no title.
#To publish and hist your findings for free we place it on NeoCities. 

#Leaflet
#We can use leaflet to create interactive maps.
#This how we display the entire map.
library(leaflet) #Here you are adding tiles.
my_map <- leaflet() %>% addTiles()
my_map
#addTiles just adds the data from Open street map. http://www.openstreetmap.org/
#We can zoom into a particular area too.
my_map <- my_map %>% #This is how we can set the latitute and longitude and the popup text.
    addMarkers(lat=39.2980803, lng=-76.5898801, 
               popup="Jeff Leek's Office")
my_map
#To add multiple markers we can create a table and then pass it as arguments.
df <- data.frame(lat = runif(20, min = 39.2, max = 39.3),
                 lng = runif(20, min = -76.6, max = -76.5))
df %>% 
    leaflet() %>%
    addTiles() %>%
    addMarkers()
#We can have popups as icons too.
hopkinsIcon <- makeIcon(
    iconUrl = "http://brand.jhu.edu/content/uploads/2014/06/university.shield.small_.blue_.png",
    iconWidth = 31*215/230, iconHeight = 31,
    iconAnchorX = 31*215/230/2, iconAnchorY = 16
)
hopkinsLatLong <- data.frame(
    lat = c(39.2973166, 39.3288851, 39.2906617, 39.2970681, 39.2824806),
    lng = c(-76.5929798, -76.6206598, -76.5469683, -76.6150537, -76.6016766))
hopkinsLatLong %>% 
    leaflet() %>%
    addTiles() %>%
    addMarkers(icon = hopkinsIcon)
#We can have both icons and links and even text if we want in a popup too.
hopkinsSites <- c(
    "<a href='http://www.jhsph.edu/'>East Baltimore Campus</a>",
    "<a href='https://apply.jhu.edu/visit/homewood/'>Homewood Campus</a>",
    "<a href='http://www.hopkinsmedicine.org/johns_hopkins_bayview/'>Bayview Medical Center</a>",
    "<a href='http://www.peabody.jhu.edu/'>Peabody Institute</a>",
    "<a href='http://carey.jhu.edu/'>Carey Business School</a>"
)
hopkinsLatLong %>% 
    leaflet() %>%
    addTiles() %>%
    addMarkers(icon = hopkinsIcon, popup = hopkinsSites)
#Now if we have many points it is better to have clusters of sor=me sort.
#We can have amazing clustering techniques or simple circles.
#This is for amazing technique.
df <- data.frame(lat = runif(500, min = 39.25, max = 39.35),
                 lng = runif(500, min = -76.65, max = -76.55))
df %>% 
    leaflet() %>%
    addTiles() %>%
    addMarkers(clusterOptions = markerClusterOptions())
#This is for circles.
df <- data.frame(lat = runif(20, min = 39.25, max = 39.35),
                 lng = runif(20, min = -76.65, max = -76.55))
df %>% 
    leaflet() %>%
    addTiles() %>%
    addCircleMarkers()
#We can use the circles better than just simple markers that is in a more usefull way like this.
md_cities <- data.frame(name = c("Baltimore", "Frederick", "Rockville", "Gaithersburg", 
                                 "Bowie", "Hagerstown", "Annapolis", "College Park", "Salisbury", "Laurel"),
                        pop = c(619493, 66169, 62334, 61045, 55232,
                                39890, 38880, 30587, 30484, 25346),
                        lat = c(39.2920592, 39.4143921, 39.0840, 39.1434, 39.0068, 39.6418, 38.9784, 38.9897, 38.3607, 39.0993),
                        lng = c(-76.6077852, -77.4204875, -77.1528, -77.2014, -76.7791, -77.7200, -76.4922, -76.9378, -75.5994, -76.8483))
md_cities %>%
    leaflet() %>%
    addTiles() %>%
    addCircles(weight = 1, radius = sqrt(md_cities$pop) * 30)
#We can place rectangles too.
leaflet() %>%
    addTiles() %>%
    addRectangles(lat1 = 37.3858, lng1 = -122.0595, 
                  lat2 = 37.3890, lng2 = -122.0625)
#We can have a legend too.
df <- data.frame(lat = runif(20, min = 39.25, max = 39.35),
                 lng = runif(20, min = -76.65, max = -76.55),
                 col = sample(c("red", "blue", "green"), 20, replace = TRUE),
                 stringsAsFactors = FALSE)
df %>%
    leaflet() %>%
    addTiles() %>%
    addCircleMarkers(color = df$col) %>%
    addLegend(labels = LETTERS[1:3], colors = c("blue", "red", "green"))

#R Packages - Creation
#It has a structured format. It has documentation.
#We write the code in the .R file and then incorporate it into a R package structure.
#Then we generate its documentation and package it up !
#An R package is started by 
#0) Creating a directory with the name of the R package.
#1) A DESCRIPTION file which has info about the package.
#2) R code! (in the R/ sub-directory).
#3) Documentation (in the man/ sub-directory).
#4) NAMESPACE (optional, but do it).
#5) Full requirements in Writing R Extensions.

#DESCRIPTION File Contents:
#1) Package: Name of package (e.g. library(name)).
#2) Title: Full name of package.
#3) Description: Longer description of package in one sentence (usually).
#4) Version: Version number (usually M.m-p format).
#5) Author, Authors@R: Name of the original author(s).
#6) Maintainer: Name + email of person who fixes problems.
#7) License: License for the source code.
#O8)Depends: R packages that your package depends on.
#O9)Suggests: Optional R packages that users may want to have installed.
#O10)Date: Release date in YYYY-MM-DD format.
#O11)URL: Package home page.
#O12)Other fields can be added.

#Code file:
#Copy R code into the R/ sub-directory.
#There can be any number of files in this directory.
#Usually separate out files into logical groups.
#Code for all functions should be included here and not anywhere else in the package.

#Namespace file:
#1) Used to indicate which functions are exported.
#2) Exported functions can be called by the user and are considered the public API.
#3) Non-exported functions cannot be called directly by the user (but the code can be viewed).
#4) Hides implementation details from users and makes a cleaner package interface.
#5) You can also indicate what functions you import from other packages.
#6) This allows for your package to use other packages without making other packages visible to the user.
#7) Importing a function loads the package but does not attach it to the search list.
#Example:
#Key directives
#export("<function>")
#import("<package>")
#importFrom("<package>", "<function>")
#Also important
#exportClasses("<class>")
#exportMethods("<generic>")

#Documentation File:
#1) Documentation files (.Rd) placed in man/ sub-directory.
#2) Written in a specific markup language.
#3) Required for every exported function.
    #Another reason to limit exported functions.
#4) You can document other things like concepts, package overview.

#The Help file has its own syntax.

#Building and Checking.
#1) R CMD build is a command-line program that creates a package archive file (.tar.gz).
#2) R CMD check runs a battery of tests on the package.
#3) You can run R CMD build or R CMD check from the command-line using a terminal or command-shell application.
#4) You can also run them from R using the system() function.
#system("R CMD build newpackage")
#system("R CMD check newpackage")
#The checking is done in this way,
#1) R CMD check runs a battery tests.
#2) Documentation exists.
#3) Code can be loaded, no major coding problems or errors.
#4) Run examples in documentation.
#5) Check docs match code.
#All tests must pass to put package on CRAN.

#We can get a background explaination or structure to the package.
#The package.skeleton() function in the utils package creates a "skeleton" R package.
#Directory structure (R/, man/), DESCRIPTION file, NAMESPACE file, documentation files.
#If there are functions visible in your workspace, it writes R code files to the R/ directory.
#Documentation stubs are created in man/.
#You need to fill in the rest!

#Example:
#' Building a Model with Top Ten Features
#' 
#' This function develops a prediction algorithm based on the top 10 features
#' in 'x' that are most predictive of 'y'.
#' 
#' @param x a n x p matrix of n observations and p predictors
#' @param y a vector of length n representing the response
#' @return a 'lm' object representing the linear model with the top 10 predictors
#' @author Roger Peng
#' @details
#' This function runs a univariate regression of y on each predictor in x and
#' calculates the p-value indicating the significance of the association. The
#' final set of 10 predictors is the taken from the 10 smallest p-values.
#' @seealso \code{lm}
#' @import stats
#' @export

topten <- function(x, y) {
    p <- ncol(x)
    if(p < 10)
        stop("there are less than 10 predictors")
    pvalues <- numeric(p)
    for(i in seq_len(p)) {
        fit <- lm(y ~ x[, i])
        summ <- summary(fit)
        pvalues[i] <- summ$coefficients[2, 4]
    }
    ord <- order(pvalues)
    x10 <- x[, ord]
    fit <- lm(y ~ x10)
    coef(fit)
}

#' Prediction with Top Ten Features
#' 
#' This function takes a set coefficients produced by the \code{topten}
#' function and makes a prediction for each of the values provided in the
#' input 'X' matrix.
#' 
#' @param X a n x 10 matrix containing n observations
#' @param b a vector of coefficients obtained from the \code{topten} function
#' @return a numeric vector containing the predicted values

predict10 <- function(X, b) {
    X <- cbind(1, X)
    drop(X %*% b)
}

#Roxygen will make the documentation and all for you if you code it in this way with the code.
#Go to build configure build tools generate with roxygen.
#Click on Rd and Namespace files and then build and reload then OK.

#Classes and Methods
#They are located in the methods package. It is a pre defined package and is loaded automaically.
#We can create classes by using setClass() function.
#We can create methods by using setMethod() function.
#We can create generic classes by using setGeneric() function.
#We can create objects by using the new() function.
#We can see the methods
methods(mean)#mean or anything else.
#mean and print are from the S3 generic package
show
#show is the S4 equivalent of the function print.
#show on the other hand is from the S4 generic package.
showMethods("show")
methods(show)
#ShowMethods show more I guess but both must eb used in their own way.
#To look at the generic methods,
#In S3 we use, getS3method(<generic>,<class>).
#In S4 we use, getMethod(<generic>,<signature>).

#In S3 we can call some of the underlaying method directly.
#In S4 we can not do such a thing.
#It is adviced to not do sucha a thing tho.

#We can create the class like this,
library(methods)
setClass("polygon",
         representation(x = "numeric",
                        y = "numeric"))
#The slots for this class are xand y.
#The slots for an S4 object can be accessed with the @ operator.
#Thats how to create a function.
setMethod("plot", "polygon",
          function(x, ...) {
              plot(x@x, x@y, type = "n", ...)
              xp <- c(x@x, x@x[1])
              yp <- c(x@y, x@y[1])
              lines(xp, yp)
          })
setMethod("print", "polygon",
          function(x,...) {
              print(x@x)
              print(x@y)
          })
#This is how to create the object and call its function.
p <- new("polygon", x = c(1, 2, 3, 4), y = c(1, 2, 3, 1))
plot(p)

#Swirl creations:
library(swirlify)
#We then use the setwd to set the working directory.
#Then we create a lesson by,
new_lesson("Lesson 1", "My first course")
#This will open multiple files.
#Anything we write any package we mention in dependson will be checked if the user has it and if not it will ask and then install it.
#Anything we write any command we mention in the InitLesson.R will be executed before we start the lesson.
#customTests.R is used for checking of some sorts.
#To add questions we can use,
wq_message()
#To add a simple message that prints.
wq_command()
#To add a slightly more complex question that prompts the used to type some code which is then checked.
#After creating the questions and all we run the command below.
add_to_manifest()
#This creates a MANIFEST file next to the lesson inside the course directory.
#Then to check if the lesson is made correctly we test it,
test_lesson()
#If no warnings or anythings are shown then the lesson is good to go.
#Then to finally run the lesson we write,
demo_lesson()
#This will start the lesson.
get_current_lesson()
#This will give us the current lesson and course we are working on.
#We can create multiple choice questions like, 
wq_multiple()
#We can add figure questions too.
wq_figure()
#We need to mention the file containing the figure inside figure and set the type to new if you want to over right or add if you want to just add something on top.
