library(shiny)
shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("Car MPG prediction"),

        sidebarPanel(
            p('This app predicts car MPG based on power and weight. Enter desired parameters of power and weight to the left, and the results will be displayed to the right. The prediction model is based on the mtcars dataset in R.'),
            numericInput('hp', 'Power (hp)', 100, min = 50, max = 340, step = 1),
            numericInput('wt', 'Weight (lb/1000)', 3, min = 1.5, max = 5.5, step = 0.1)
        ),

        mainPanel(
            h3('Results of prediction'),
            h4('You entered power'),
            verbatimTextOutput("hp"),
            h4('You entered weight'),
            verbatimTextOutput("wt"),
            h4('Which resulted in a MPG prediction of '),
            verbatimTextOutput("prediction")
        )
    )
)
