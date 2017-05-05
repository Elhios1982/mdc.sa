#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
source("helper.R")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  #setMsg <- reactive({
    # Set the message to be processed
    #setJSONCall(input$phrase, "en")
  #})
  
  output$textResult <- renderText({
    switch(orchestrator(input$phrase), 
           "P+" = "Very Positive",
           P = "Positive",
           "N+" = "Very Negative",
           N = "Negative",
           NONE = "Neutral")
  })
  
})
