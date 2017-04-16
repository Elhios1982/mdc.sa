library(jsonlite)
source("rest-string-formatter.R")

setJSONCall <- function(txtMessage, language){
  urlMC <<- "http://api.meaningcloud.com/sentiment-2.1"
  txtValue <<- setStringToFormat(txtMessage)
  license_key <<- "4f2e3f3236a8c1a9fb0f9abfb93b033d"
  payloads <<- paste("key=",license_key,"&lang=",language,"&txt=",txtValue,"&model=general",sep="")
}

getJSONMessage <- function(){
  jsonResponse <- fromJSON(paste(urlMC,"?",payloads,sep=""))
  return(jsonResponse)
}