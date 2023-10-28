# Bank Customer Churn Prediction 

## Introduction

This repository contains code and resources for predicting customer churn in a bank using the R programming language. Customer churn is a critical metric for businesses, especially in industries with high competition, such as the banking sector. Predicting which customers are likely to churn can help a bank take proactive steps to retain them.

## Dataset

The dataset used for this project is available in the `data` folder. It contains historical data on various customer attributes and whether they churned or not. The dataset is divided into training and testing sets to facilitate model evaluation.

## Requirements

Make sure you have the following R packages installed:

- `tidyverse`: For data manipulation and visualization.
- `caret`: For building and evaluating predictive models.
- `randomForest`: For implementing a Random Forest classifier.
- `xgboost`: For implementing an XGBoost classifier.

You can install these packages using the following R commands:

```R
install.packages("tidyverse")
install.packages("caret")
install.packages("randomForest")
install.packages("xgboost")
