#My code notes 7.
#Exploratory Data Analysis with R.

#Exploratory data analysis (EDA) is a key element of data science because it allows you to develop a rough idea of what your data look like and what kinds of questions might be answered by them.
#To decrease the size and losing the actual values we can log10 or more depending on what we need it to be.
#We can store the plots in a variable too.
#To see a subset of data plotted use with and place the subset code there.
#We can label the points by stating x+0.05, y+0.05, labels=...... .
#We can work with different graphic devices at the same time too.
dev.off()
#This closes the graphic device.
dev.cur()
#This gives you the current graphic device.(starts from 2).
dev.set()
#By default will go to the next device using. We can assign a number corresponding to the graphic device we want to go to, too.
dev.next()
#Which brings you to the next graphic device.
dev.copy(type_(png),filrnamewithextension_)
#This will convert the file the way you want it to be in the format you want it to be. Note that this will only show after you dev.off().

#There are 6 principles of analytic graohics,
#Principle 1: While making an hypothesis always compare it so some other hypothesis(like control, etc.).
#Principle 2: Show causality, meaning explain with another plot if you have to, is to why does either of the hyposthesis come true true. There will be a reason or a link.
#Principle 3: Show multivariate data, meaning if the data can be split then split the data and show it then.
#Principle 4: Integration of evidence, meaning if possible always integrate all the data into one plot making it richer.
#Principle 5: Describe and document the evidence withaprropriate labels and scals and sources.
#Principle 6: Content is king, if the content/data is not interesting then no ammount of plots or graphs will maki it unteresting.

#There are 3 types of plotting systems in R,
#One important thing to note is that we can not use functions of one plootting system with another plotting system.
#1)Base Plotting System.(atist's palatte model).
#In this plotting systen we first make the plot using the plot function and then use various annotating functions to label them.
#2)Lattice Plotting System.(also called pannel plots.)
#In this plotting system all the plotting parameters have to be mentioned in one direct function call(xyplot).Great to construct sub plots.
#3)ggplot2 Plotting System.
#This plotting system combines all the good featured from the other two plotting systems. 
#This plotting system has a lot of defaults which are good hence could be frequently used.

#Base Plotting System.

#As we know that there are two different steps in making a plot using the base plotting system namely the creation of the plot an dthen the annotation.
b<-file(description = "avgpm25.csv", 'r')
a<-read.csv(b)

#1)5 number  summary.(= the mean too).
summary(a)
##pm25             fips        region      longitude      
##Min.   : 3.383   Min.   : 1003   east:442   Min.   :-158.04  
##1st Qu.: 8.549   1st Qu.:16038   west:134   1st Qu.: -97.38  
##Median :10.047   Median :28034              Median : -87.37  
##Mean   : 9.836   Mean   :28431              Mean   : -91.65  
##3rd Qu.:11.356   3rd Qu.:41045              3rd Qu.: -80.72  
##Max.   :18.441   Max.   :56039              Max.   : -68.26  
##latitude    
##Min.   :19.68  
##1st Qu.:35.30  
##Median :39.09  
##Mean   :38.56  
##3rd Qu.:41.75  
##Max.   :64.82  
#2)boxplot summary.
boxplot(a$pm25)
#This will give you a blue box where the black line will be the median the upper end of the box will be the 3rd quartile and lower end of the box will be the 1st quartile.
#The "whiskers" of the box (the vertical lines extending above and below the box) relate to the range parameter of boxplot, which we let default to the value 1.5 used by R. The height of the box is the interquartile range, the difference between the 75th and 25th quantiles. In this case that difference is 2.8. The whiskers are drawn to be a length of range*2.8 or 1.5*2.8. This shows us roughly how many, if any, data points are outliers, that is, beyond this range of values.
boxplot(pm25~region,data=a)
#This is same as boxplot above but here there are 2 boxplots one for east and the other for west.
#3)histogram summary.
hist(a$pm25,breaks = 100)
#This will give you a green box graph as to how many values are there in which value as in how many counties have 10, 11 , 12 PM2.5 but here the values will be floored or ceiled or simply rounded off as the graph is flat. 
#This will give you a shape of the data.
#The breaks can be removed but you should place them to get a better and cleaner picture. Try yo make breaks equal to half of the number of rows.
hist(subset(a,region=="west")$pm25,breaks = 100,col = "blue")
hist(subset(a,region=="east")$pm25,breaks = 100,col = "green")
#This way we can represent 2 dimentions in histogram.
#You can use formula in this.
rug(a$pm25)
#This will give you the density by dashes bellow the histogram to give you a better view about the exact number of observations that actually form the shape.
#4)Barplot summary.
barplot(table(a$region))
#This will make a barplot with the number of counties in the east and west sector.
#5)Plot summary.
with(a,plot(latitude,pm25))
#This will give a scatter plot of latitute in x asis and pm25 in the y axis,
with(a,plot(latitude,pm25))
#Here the black circles will be the east and red circles will be west hence w eare now seeing 3 variables. 
with(subset(a,region=="west"),plot(latitude,pm25,main = "west"))
with(subset(a,region=="east"),plot(latitude,pm25,main = "east"))
#We can separate them too like this.
#This should be moreover used to see comparisons 1D data works too tho.
abline(h=12,v=12) #You can set values as functions too. 
#This will set an horizontal and a verical line at 12. The maximum of v will be the nrow() of the parameter.
a<-matrix(1:4,4:1)
lines(a)#line(0,10)--->line from (0,0)to(10,10).
#This allows us to make co-ordinated(x,y) lines.
points(30,30)
#This will mark a point at 30,30.
text(30,30,"p1")
#This will mark "h" a point at 30,30.
title("My PLot")
#This make sthe title to My Plot.
mtext("hell",3,outer = T)
#thenuber is the side the same way as oma and hell is what is printed. Outer means if we have set some outer value(default is 0) it will be printed there in the particular side..
#We can set two types of parameters.
#1)We can set parameters to global graphics parameters using the par function. They will be common to all plots in the global environment unless the parametr are changed.
#las   - sets the orienatation of the axis labels.(default s 0).
#bg    - sets the background colour of the plot.(default transperent).
#mar   - sets the margins of the plot. Bottom and then anti-clock-wise argument notation.(deafult is 5.1 4.1 4.1 2.1).
#oma   - sets the outer margins of the plot.(default is 0). Used mostly when there are multiple graphs on one page.
#mfrow - number of plots per row, column.(plots filled row-wise).(default is 1,1).
#mfcol - number of plots per row, column.(plots filled column-wise).(default is 1,1).
#2)We can set the plot parameters by specifying them during the plot creation or modification functions and they will be only for a specific plot.
#main - places a heading.
##lwd - marks the thicknedd of the line.(default is 1).
#lty  - makes it dash dash. The space is tly but there is a limit.(default is solid).
#col  - gives colour to the plot.(See colours() to see the list of colours you can use colours or names).(default is black).
#col.axis - sets the colour of the values in th axis.
#col.labels - sets the colour of the labels.
#xlab - gives the label in the x axis.
#ylab - gives the label in the y axis.
#pch  - gives shape to the plotting symbol.(default is 1).
#sub-'' will set the subtitle at the bottom. 
#If no columns are mentioned x is the first column and y is the second.
#We can see the default values if these parameters by par("parametername_") and the output will be its default value.
#Examples.
#1)
with(airquality,plot(Wind,Ozone,main="Ozone and Wind in New Tork City",type="n"))
#This will just make the ploy without any data.
with(subset(airquality,Month==5),points(Wind,Ozone,col="blue"))
with(subset(airquality,Month!=5),points(Wind,Ozone,col="red"))
legend("topright",pch=1,col=c("blue","red"),legend=c("May","Other Months"))
#Adding Scale/Legend.
#2)
with(airquality,plot(Wind,Ozone,main="Ozone and Wind in New Tork City",pch=20))
model<-lm(Ozone~Wind,airquality)
abline(model,lwd=2)
#Regression model.
#3)
par(mfrow=c(1,2))
#Setting the value to give 2 plots in one row.
with(airquality,{
    plot(Wind,Ozone,main = "OW")
    plot(Solar.R,Ozone,main = "OS")
})
#Ploting 2 plots in one row. 

#Lattice PLotting System,

#As we know in this plotting system all the parameters have to be mentioned all at once.
#This plotting system is more often used to plot multiple plots or higher dimentional plots.
library(lattice) #To use this plotting system we need to load its package named lattice.

#So some of the main functions in lattice are:- 
#xyplot - This is probably the most important function. It's basically used for making scatter plots.
#bwplot - This is to make boxplots.
#histogram - This is to make histograms. 
#stripplot - This is to make a kind of like a boxplot, but it uses points.
#dotplot - This is to make plots points where, it will look like a violin strings.
#splom -This is to make scatter plot matrix. It's kind of like the pairs function in the base plotting system.
#levelplot , contourplot - They are to make plots for image data. 
xyplot(x~y|f*g,data)
#I want to look at the scatter plot of y and x for every level of f and g.
library(datasets)
airquality$Month<-as.factor(airquality$Month)
xyplot(Ozone~Wind|Month,data = airquality,layout=c(5,1))
#This will split the data accordig to the factor variable , here airquality.
#We can store the plot in an object and then see its namees which can be subsetted like variablename_[["names()_"]].
mynames[myfull]#This will give you the non null values.
#skip parameters will skip the headings of the factor variables.
#Examples.
xyplot(Ozone~Wind|Month,panel=function(x,y,...){
    panel.xyplot(x,y,...)
    panel.lmline(x,y,col="red")
    panel.abline(h=median(y,na.rm = T),lty = 2,col = "blue")
},data = airquality,layout=c(5,1),col="black",pch=20)

#ggplot2 Plotting System.

#This plotting system is the best as it is consists of all the features of the base and lattice plotting system.
library(ggplot2)
#This loads the mpg data set.

#This is how to use qplot.
#This is the way we make scatter plots.
qplot(displ,hwy,data=mpg)
#This how you plot in the simplest sense.
#This is the way we make histograms.
qplot(hwy,data=mpg)
#If you specify only one variable then the qplot will make an histogram.
#This is how we make boxplots.
qplot(hwy,data=mpg,geom="boxplot")

qplot(displ,hwy,data=mpg,color=drv)
#This way drv being a factor variable will give you different color scheme for each and every indivisual level of the factor variable.
#We can have various allocations plotted like this.
qplot(hwy,data=mpg,color=drv)#Only the border will be coloured according to the corresponding level of the factor.
qplot(hwy,data=mpg,fill=drv)#The whole thing will be coloured according to the corresponding level of the factor.
qplot(displ,hwy,data=mpg,geom=c('point'),shape=drv,color=drv)
#This will gve us various shapes with various colors for readings corresponding to the level of the factor variable.
#Another thing is that the legend is created automatically.
qplot(displ,hwy,data=mpg,geom=c('point','smooth'))#We can have a smooth curve and points too.
#This way we can place a loes smoother which smooths the trend. Helps us seeing the overall trend. This can be used inly on 2D data.
#The grey zone is 95% confidence.
#We are placing points an dsmooth as we want both points and a smooth curve.
qplot(hwy,data=mpg,geom='density',color=drv)#Can be used only on 1D data.
#Like the we can get the density line too.
qplot(displ,hwy,data=mpg,geom='point',facets=.~drv)
#What facets does is that it allows you to have multiple graphs in the same page.
#If we place .~ before the variable according to which the plot is going to be sorted then it will be column wise.
#If we place ~. after  the variable according to which the plot is going to be sorted then it will be row    wise.
#This means the . has no variable.
qplot(hwy,data=mpg,facets=drv~.,binwidth=1)
qplot(hwy,data=mpg,facets=drv~.,binwidth=0.5)
#The binwidth is the width of the readings.
qplot(displ,hwy,data=mpg,color=drv)+geom_smooth(method="lm")
#We can have multiple readings too now.

#This is how to use ggplot.
a<-read.table("a.txt",sep = ',',header = T)
g<-ggplot(a,aes(logpm25,NocturnalSympt))
#This will make the background of the graph.
g<-g+geom_point(color="steelblue",alpha=0.5)#This will set the points to have an steel blue colour. You can set the shapes, sizes and all too and also the transperancy using alpha.
g<-g+geom_point(aes(color=bmicat),alpha = 0.5)#This will split acolour according to bmicat.
#This will add points to it.
g+geom_line(color="steelblue")
#This adds a line.
g+geom_smooth(color="black")
#This will add an loes smoother smoother.
g<-g+geom_smooth(method = "lm",se=F,size=1,linetype=2)#These all are its important parameters.
#This will add an linear regression line.
a$bmicat<-as.factor(a$bmicat)
g<-g+facet_grid(.~bmicat)+geom_smooth(method = "lm")
#This will split the plot in levels of the factor variable. The thing to not eis that the regression like dissappears so we have to re add it.
#There are other anotating functions too, Once changed can not undo.
#xlab - to tabel the x axis.
#ylab - to tabel the y axis.
#ggtitle - to place a title in the plot.
#We can chenge the theme too, there are pre defined themes or else we can modify too,
#like this, there are predefined packagd themes too use library(ggthemes).
theme(
    panel.background = element_rect(fill = "lightblue",
                                    colour = "lightblue",
                                    size = 0.5, linetype = "solid"),
    panel.grid.major = element_line(size = 0.5, linetype = 'solid',
                                    colour = "white"), 
    panel.grid.minor = element_line(size = 0.25, linetype = 'solid',
                                    colour = "white"),
)#We can use the base_family="Times" to change the font to Times.
theme(plot.background = element_rect(fill = "darkblue"))
#Now in ggplot() outliers are handles differently to plot().
#In plot you will see a break but athe top or bottom (if you use geom_line).
#But in ggplot it will enlarged. Hence to get it zoomed,
g<-g+xlim()+ylim()#This will set the vales. 
#This wint work as ggplot will just suset the boint and introduce a break before na d after the point.
g<-g+coord_cartesian(ylim = c(),xlim = c())#This will set the coordinate values of the graph.
#Now if you have to add a variable which not a factor but is a continuous function we use quantile then cut and make them separate in 3 parts then you use facet_wrap.
#facet_wrap(~variable) will return a symmetrical matrix of plots for the number of levels of variable . facet_grid(. ~variable) will return facets equal to the levels of variable distributed horizontally or vercically.
#So in facet_wrap we will have to mention nrow and ncol else it will keep going all in 1 row.
g+geom_hline(yintercept=4, linetype="dashed", color = "red")
#This will get an horizontal line at y=4.
g+geom_segment(aes(x = 4, y = 15, xend = 4, yend = 27))
#This will add segments
g+geom_abline(intercept = 37, slope = -5, color="red",linetype="dashed", size=1.5)
#Lines in polar form.
g+geom_segment(aes(x = 5, y = 30, xend = 3.5, yend = 25),arrow = arrow(length = unit(0.5, "cm")))
#To draw an arrow.

#Pattern analysis

#These dimention reduction and cluster analysis help us identify these patterns.
#These concepts are a part of machine learning.

#Clustering.

#Clustering is finding out groups having similar observations.
#It can help to bring the columns and rows that are related to each other more than others together to it becomes easier for us to percieve.

#Hierarchical Clustering.
x<-1:10
y<-11:20
z<-data.frame(x=x,y=y)
dist<-dist(z)#This gives a lower triangular matrix, with corresponding distances.
#We can measure distances like this. The default distance measuring system is the eucledian.
hc<-hclust(dist)#This converts the dist into cluster.
plot(hc)#This would plot a cluster dendodram.
z<-as.matrix(z)
heatmap(z)
#This gives us an heatmap of the hirarchical cluster.
#Better view,
myplclust <- function( hclust, lab=hclust$labels, lab.col=rep(1,length(hclust$labels)), hang=0.1,...){
    ## modifiction of plclust for plotting hclust objects *in colour*!
    ## Copyright Eva KF Chan 2009
    ## Arguments:
    ##    hclust:    hclust object
    ##    lab:        a character vector of labels of the leaves of the tree
    ##    lab.col:    colour for the labels; NA=default device foreground colour
    ##    hang:     as in hclust & plclust
    ## Side effect:
    ##    A display of hierarchical cluster with coloured leaf labels.
    y <- rep(hclust$height,2)
    x <- as.numeric(hclust$merge)
    y <- y[which(x<0)]
    x <- x[which(x<0)]
    x <- abs(x)
    y <- y[order(x)]
    x <- x[order(x)]
    plot( hclust, labels=FALSE, hang=hang, ... )
    text( x=x, y=y[hclust$order]-(max(hclust$height)*hang), labels=lab[hclust$order], col=lab.col[hclust$order], srt=90, adj=c(1,0.5), xpd=NA, ... )}

#K-means Clusterng.
#This type of clustering uses the centroid trial and error method.
x<-1:10
y<-11:20
z<-data.frame(x=x,y=y)
kmeansobj<-kmeans(z,centers = 5)#This will vary every time.
names(kmeansobj)
##[1] "cluster"      "centers"      "totss"        "withinss"    
##[5] "tot.withinss" "betweenss"    "size"         "iter"        
##[9] "ifault"
kmeansobj$cluster
##[1] 5 5 5 2 2 4 4 3 1 1
kmeansobj$centers
##    x    y
##1 9.5 19.5
##2 4.5 14.5
##3 8.0 18.0
##4 6.5 16.5
##5 2.0 12.0
#So we can get the values of the data like this.
plot(x,y,data=z,col=kmeansobj$cluster)
points(kmeansobj$centers,pch=3,col=1:5)
#This will make the plot to help you visualize.

#Dimention reduction.
#The goal is to find a lower rank matrix that explains the data of the parent matrix.
#This helps us reduce the number of variables too.

y<-1:100+rpois(1:100,10)
x1<-1:10+rpois(1:10,1)
x2<-1:10+rpois(1:10,20)
x<-c(x1,x2)
z<-outer(x,y)
image(1:10,1:10,t(z)[1:10,1:10])
#This will give us a random noisy graph.
heatmap(z)
#This will give us a hierarchical cluster heatmap of the data.
plot(colMeans(z))
#This will give you a positive slope at theta=45 degrees.
plot(rowMeans(z))
#This will give you a positive slope at theta=45 degrees. More noisy but less number of pounts.

#Principle Component Analysis(PCA).
#This helps in the statistical problem by giving a solution.
#In this you need to spit the matrix into 3 parts UDV^T.
svd<-svd(scale(z))#This will give you the PCA or the matrix. It will return a list of the U, V and D.
plot(svd$u[,1])#This will be same as the rowMeans but the dimentions are reduced.
plot(svd$v[,1])#This un outered it and then had a dimention reduction after being averaged. As the matrix was outered the values came out constant. Else they would show the same trend as columns.
plot(svd$d)#Original matrix, 
plot(svd$d^2/sum(svd$d^2))#Dimentions reduced to percentage of variation.
#The above shows the percentage of variation. Here I get 100 percent variation as I have only used outer.

#Singular Value Decomposition(SVD).
#This helps in the data compression problem by giving a solution.
#In this way we need to substract the mean to each column with the elements of the column and then divide it by the standard diviation the that column. What we get in the end should be V.
pca<-prcomp(z,scale. = T)
plot(pca$rotation[,1],svd$v[,1])#This proves that they are same. I get only one value as I have used outer.

#If there are missing values svd wont work.
library(impute)
z<-impute.knn(z)$data
#This checks for any NA/NaN values then if they are missing then and imputes it by the k nearest neighbors to that row.
#Hence the plot and hence the trend will not be too different than the original data.

#So finally, we can set approximations as,
z<-svd$u[,1:5]%*%diag(svd$d[1:5])%*%t(svd$v[,1:5])
#This will give 5/total percent of the data.

#Colours,

#There are many other functions available at colorspace.
#There are many standard colours in R we can see them using colours().
#There are things like topo.colours() which give us topographical colours.
#There are things like heat.colours() which give us essentially heat colours.
#But we can also create our own,

#We can use colorRamp function to create our own colours,
pal<-colorRamp(c("red","blue"))
pal(1)#This takes values from 0 to 1.
##     [,1] [,2] [,3]
##[1,]    0    0  255
pal(0)
##     [,1] [,2] [,3]
##[1,]  255    0    0
pal(0.5)
##      [,1] [,2]  [,3]
##[1,] 127.5    0 127.5
pal(0.75)
##      [,1] [,2]   [,3]
##[1,] 63.75    0 191.25
#We can refer to various colors like this.
#If we use 3 arguments in the colorRamp them 0 refres to red, 1 refers to green and 0.5 refers to blue. Values between 0 and 0.25 give a mixture of red and blue where blue will be dominant and values between 0.5 and 1.0 gives a combination of greena and blue.

#We can use the colorRampPalette to get a better mixture.
pal<-colorRampPalette(c("red","yellow"))
pal(2)#This takes an integer agrument.
##[1] "#FF0000" "#FFFF00"
pal(4)
#[1] "#FF0000" "#FF5500" "#FFAA00" "#FFFF00"
pal<-colorRampPalette(c("red","yellow","black"))
pal(4)
##[1] "#FF0000" "#FFAA00" "#AAAA00" "#000000"
#If I give 3 arguments then 0 will correspont to the first colour 1 will correspond to the last colour and 2 will give you all the 3, more that that the mean of each 2 bits will be taken to get a fade.
#In simple words this gives the fade from one colour to another more the number better the fade.

#While we can make a lot of colour palettes in R some come in pre-made, in packages.
library(RColorBrewer)
#There are three types of palettes,
#1)Sequential. (To show odered data that is in a sequence).
#2)Diverging. (To show deviations in data).
#3)Qualitative. (To show the quantities of data).
pal<-brewer.pal(9,"BuGn")#More thsi better the colour varience (more visibility).
#The first number is the number of shades you would like to have nd the second parameter is the palette from which you would like to take the colours from.
paluse<-colorRampPalette(pal)
image(volcano,col=paluse(20))
#Then you can use it like this.
x<-rnorm(10000)
y<-rnorm(10000)
smoothScatter(x,y)
#If you have manay many points tobe plotted we can use this function which allows us to see the points better.
#The default here is colorRamp=colorRampPalette(c("white",blues90)) and pch='.' which can be changed to preferance.

col<-rgb(1,0,0,alpha=0.5)#Here we can add transperancy too by setting alpha directly here.
#If we dont know the hexadecimal value of the color but know thw decimal value we can use this.
