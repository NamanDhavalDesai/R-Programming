library(httr)
library(httpuv) #We need this to use http://localhost:1410 
myapp <- oauth_app("github" , key = "e3771b4f1721978514ef" , secret = "0726a14873455f787a150b361c0b75a58e634a12")
#To create an OAuth application our authorization call back URL has to be http://localhost:1410 .
#Client id is the key.
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)
gtoken <- config(token = github_token)
req <- GET("https://api.github.com/users/jtleek/repos", gtoken)
stop_for_status(req)
names(req)
json1 = content(req)
library(jsonlite)
json2 = jsonlite::fromJSON(toJSON(json1))
json2[19,]$created_at