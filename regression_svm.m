%Fuel Economy Analysis - SVM
%Instructions are in the task pane to the left. Complete and submit each task one at a time.

%This code loads the data.
load carEcon
whos carData carTrain carTest

%Tasks 1 and 2 - Fit the model
%Fit a model and evaluate at test values.
%TASK
%Create an SVM regression model with the training data and name it mdl. Use a polynomial kernel function.
%Calculate the loss of the model and name it mdlLoss.
%Use the model to predict the response for the test values, and store the predictions in a variable named econPred.

mdl = fitrsvm(carTrain,"FuelEcon","KernelFunction","polynomial")
mdlLoss = loss(mdl,carTest)
econPred = predict(mdl,carTest)


%TASK
%Modify your code to set an option in fitrsvm which will standardize the variables 
%in carTrain before fitting the regression model.

mdl = fitrsvm(carTrain,"FuelEcon","KernelFunction","polynomial","Standardize",true)
mdlLoss = loss(mdl,carTest)
econPred = predict(mdl,carTest)
%Plot the results.
evaluateFit(carTest.FuelEcon,econPred,"SVM")

