irisSpecies <- function(SepalLength,SepalWidth,PetalLength,PetalWidth) {
  data(iris)
  library(caret)
  library(e1071)
  library(rpart)
  myModel <- train(Species~., data = iris, method = 'rpart')
  newdata = data.frame(Sepal.Length = SepalLength,Sepal.Width = SepalWidth,
                       Petal.Length = PetalLength,Petal.Width = PetalWidth)
  my_predict = predict(myModel,newdata=newdata)
  return(my_predict)
}
  
shinyServer(
  function(input, output) {
    output$inputValue1 <- renderPrint({input$SepalLength})
    output$inputValue2 <- renderPrint({input$SepalWidth})
    output$inputValue3 <- renderPrint({input$PetalLength})
    output$inputValue4 <- renderPrint({input$PetalWidth})
    output$prediction <- renderPrint({irisSpecies(input$SepalLength, input$SepalWidth,input$PetalLength,input$PetalWidth)})
  }
)
