source("meaningcloud-api-call.R")
source("json-flattener.R")

## Set the message and define the language
## en - english
## es - spanish
## sv - slovenian
setJSONCall("Sunny day", "en")

## Send a text message to MeaningCloud.com REST API and retrieve a JSON message
output <- getJSONMessage()

## We define the JSON response to flatten
setJSONMessageToFlatten(output)

## Retrive flattened JSON file 
df <- getFlatJSON()
df