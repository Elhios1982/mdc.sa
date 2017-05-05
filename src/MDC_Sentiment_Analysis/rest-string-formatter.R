setStringToFormat <- function(myString){
  formattedString <<- gsub(" ", "%20", myString)
}

getFormattedString <- function(){
  return(formattedString)
}