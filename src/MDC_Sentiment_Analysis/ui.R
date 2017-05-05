#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("MDC Sentiment Analysis"),
  
  sidebarLayout(
    sidebarPanel(
          helpText("Enter the phrase to analyze")
        , textInput("phrase","Phrase", "Adal this app is quite good")
        , submitButton("Analyze me!")
    ),
    
    mainPanel(
      verbatimTextOutput("textResult")
    )
  )
))
