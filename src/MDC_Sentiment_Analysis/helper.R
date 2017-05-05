source("meaningcloud-api-call.R")
source("json-flattener.R")

orchestrator <- function(msg){
        setJSONCall(msg, "en")
        
        ## Send a text message to MeaningCloud.com REST API and retrieve a JSON message
        output <- getJSONMessage()
        
        ## We define the JSON response to flatten
        setJSONMessageToFlatten(output)
        
        ## Retrive flattened JSON file 
        df <- getFlatJSON()
        return(df$score_tag)
}