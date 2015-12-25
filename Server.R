library(shiny)
shinyServer(function(input, output) {
  output$anya <- renderText({
    paste(
      (input$yds + (20*input$tds) - (45*input$ints) - input$skyds)/(input$att + input$sks), "ANY/A")
  })
})