library(shiny)
shinyUI(
  fluidPage(
    titlePanel("Adjusted Net Yards per Attempt"),
    sidebarLayout(
      sidebarPanel(
        helpText("Calculate a passing statistic for American football.
                 Simply input some values from", a("here", href = "http://www.sportingcharts.com/nfl/stats/player-adjusted-net-yards-per-attempt-statistics/2015/",".")),
        numericInput("yds", label = "Pass Yards:", 
                     value = 0, step = 1),
        numericInput("tds", label = "Pass TDs:", 
                     value = 0, min = 0, step = 1),
        numericInput("ints", label = "Interceptions:", 
                     value = 0, min = 0, step = 1),
        numericInput("att", label = "Attempts:", 
                     value = 1, min = 1, step = 1),
        numericInput("sks", label = "Sacks:", 
                     value = 0, min = 0,  step = 1),
        numericInput("skyds", label = "Sack Yards:", 
                     value = 0, step = 1)
      ),
      mainPanel(
        textOutput("anya")
      )
    )
  )
)