library(jsonlite)
setJSONMessageToFlatten <- function(message){
  jsonMessage <<- message
}

getFlatJSON <- function(){
  df <- data.frame(matrix(unlist(jsonMessage), nrow=1, byrow=T),stringsAsFactors=FALSE)
  colnames(df) <- c("code","msg","credits","remaining_credits","model","score_tag","agreement","subjectivity",
                    "confidence","irony")  
  
  dataFrame <<- df[,1:10]

  return(dataFrame)
}

getJSONDS <- function(csv=TRUE){
  write.csv(file = "sentiment_analysis.csv", x = dataFrame)
}
