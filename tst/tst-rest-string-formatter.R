source("rest-string-formatter.R")

## Pass a text string and obtain a RESTful-ready formatted string
setStringToFormat("Todo me parece bonito")

formattedString <-getFormattedString()
formattedString