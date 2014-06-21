library(shiny)
shinyServer(function(input, output) {

    output$value <- renderPrint({
    	if (input$sex == 1) 
    		x <- ((input$fHeight - 13) + input$mHeight) /2
    	else
    		x <-((input$mHeight + 13) + input$fHeight) /2
    	cat(x)
    })

})
	