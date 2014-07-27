library(shiny)

carMPG <- function(hp, wt) {
    R <- lm(mpg ~ 1 + hp + wt, data = mtcars)
    newdata <- data.frame(hp = hp, wt = wt)
    predict(R, newdata)[[1]]
}

data(mtcars)

shinyServer(
    function(input, output) {
        output$hp <- renderPrint({input$hp})
        output$wt <- renderPrint({input$wt})
        output$prediction <- renderPrint({carMPG(input$hp, input$wt)})
    }
)