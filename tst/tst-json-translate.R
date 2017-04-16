source("json-translate.R")
# Read a JSON file
### JSON message from MeaningCloud.com cannot be interpreted out of the box because the nodes are missing double
### quotes for the node names. This needs to be parsed before being consumed by json-translate.R
setJSONFile("test-msg.json")

# Retrive flattened JSON file 
df <- getFlatJSON()
df

# Display JSON content as data set in console
getJSONDS(csv=FALSE)

# Create a CSV data set
getJSONDS(csv=TRUE)