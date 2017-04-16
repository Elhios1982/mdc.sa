source("web-service-call.R")
setJSONCall("mi hijo amaba este producto hasta que se murio", "es")

## Send a text message to MeaningCloud.com REST API and retrieve a JSON message
output <- getJSONMessage()
output
