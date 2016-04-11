#' Decision tree example
#' Trying out rpart
#' @export

require(rpart)
require(rpart.plot)
iris  <- read.csv(url("http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"), header = FALSE)
s <- sample(150, 50)
iris_train <- iris[s,]
iris_test <- iris[-s,]
dtm <- rpart(V5~., iris_train, method = "class")
dtm
rpart.plot(dtm, type = 4, extra = 101)
p<-predict(dtm, iris_test, type="class")
table(iris_test[,5], p)
pw <- 2
