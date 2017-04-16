library(jsonlite)
setJSONMessageToFlatten <- function(message){
  jsonMessage <<- message
}

getFlatJSON <- function(){
  df <- data.frame(matrix(unlist(jsonMessage), nrow=1, byrow=T),stringsAsFactors=FALSE)
  #colnames(df) <- c("code","msg","credits","remaining_credits","model","score_tag","agreement","subjectivity",
  #                  "confidence","irony","sentence_list_text","inip","endp","bop","confidence","score_tag","agreement",
  #                  "segment_list_text","segment_list_segment_type","segment_list_inip","segment_list_endp",
  #                  "segment_list_confidence", "segment_list_score_tag","sentimented_entity_list_form","sentimented_entity_list_form",
  #                  "sentimented_entity_list_id","sentimented_entity_list_variant","sentimented_entity_list_inip","sentimented_entity_list_endp",
  #                  "sentimented_entity_list_type","sentimented_entity_list_type","sentimented_entity_list_score_tag")
  
  colnames(df) <- c("code","msg","credits","remaining_credits","model","score_tag","agreement","subjectivity",
                    "confidence","irony","sentence_list_text","inip","endp","bop","confidence","score_tag","agreement",
                    "segment_list_text","segment_list_segment_type","segment_list_inip","segment_list_endp",
                    "segment_list_confidence", "segment_list_score_tag","sentimented_entity_list_form","sentimented_entity_list_form",
                    "sentimented_entity_list_id","sentimented_entity_list_variant","sentimented_entity_list_inip")  
  
  dataFrame <<- df[,1:10]
  ##dataFrame <<- df[,c("sentence_list_text","msg", "score_tag", "confidence","irony","remaining_credits")]
  
  return(dataFrame)
}

getJSONDS <- function(csv=TRUE){
  write.csv(file = "sentiment_analysis.csv", x = dataFrame)
}
