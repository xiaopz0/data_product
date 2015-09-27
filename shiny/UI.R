shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Iris species prediction"),
    sidebarPanel(
      numericInput('SepalLength', 'Sepal Length cm', 5, min = 4.3, max = 7.9, step = 5),
      numericInput('SepalWidth', 'Sepal Width cm', 3, min = 2, max = 4.4, step = 5),
      numericInput('PetalLength', 'Petal Length cm', 3, min = 1, max = 6.9, step = 5),
      numericInput('PetalWidth', 'Petal Width cm', 2, min = 0.1, max = 2.5, step = 5),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered'),
      verbatimTextOutput("inputValue1"),
      verbatimTextOutput("inputValue2"),
      verbatimTextOutput("inputValue3"),
      verbatimTextOutput("inputValue4"),
      h4('Which resulted in a prediction of '),
      verbatimTextOutput("prediction")
    )
  )
)
