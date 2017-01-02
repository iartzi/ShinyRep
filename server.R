library(shiny) 

angle<-function(x1,y1,x2,y2) {
      dotProd <- x1*x2 + y1*y2
      magnitude1 <- sqrt(x1*x1 + y1*y1)
      magnitude2 <- sqrt(x2*x2 + y2*y2)
      c_alpha <- dotProd/(magnitude1 * magnitude2)
      acos(c_alpha)
}

shinyServer(
      function(input, output) {
            
            output$inputX1value <- renderPrint({input$x1})
            output$inputY1value <- renderPrint({input$y1})
            output$inputX2value <- renderPrint({input$x2})
            output$inputY2value <- renderPrint({input$y2})
            output$alpha <- renderPrint({angle(input$x1,input$y1,input$x2,input$y2)})
      } 
)