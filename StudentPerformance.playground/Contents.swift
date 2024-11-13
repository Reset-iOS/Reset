import  CreateML
import TabularData
import Foundation

let dataFrame = try DataFrame(contentsOfCSVFile: URL(filePath: "/Users/prasanjit/Downloads/Student_Performance.csv"))

//split
let (trainingData, testingData) = try dataFrame.randomSplit(by: 0.75)

// convert the slice to dataFrame type
let trainingDataFrame = DataFrame(trainingData)
let testingDataFrame = DataFrame(testingData)

//Apply MLRegressor on training data
let regressor = try MLRegressor(trainingData: trainingDataFrame,targetColumn: "Performance Index")

let evaluationMetrics = regressor.evaluation(on: testingDataFrame)

print(evaluationMetrics.maximumError)
print(evaluationMetrics.rootMeanSquaredError)

// Add metadata to file

let metaData = MLModelMetadata(author: "Prasanjit", shortDescription: "This model predicts student performance based on their practice",license: "SRM", version:"1.0")
try regressor.write(to: URL(filePath: "/Users/prasanjit/Downloads/Student_Performance.mlmodel"),metadata: metaData)




