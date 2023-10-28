# Load the necessary libraries
library(ggplot2)
library(gplots)
library(dplyr)

setwd("dataset/BankChurners.csv")

# Load the data

data <- read.csv("BankChurners.csv")
colnames(data)


#to handle missing values
sapply(data, function(x) sum(is.na(x)))

#adding colours to graph
ag<-c("#fc0328","#03a9fc")

# Create a bar chart showing the distribution of customers by age
ggplot(data, aes(x = Attrition_Flag, fill = Attrition_Flag)) +
  geom_bar(position = "dodge") +
  xlab("Existing Customer") +
  ylab("Attrited Customer") +
  ggtitle("Distribution of Customer")+
  scale_fill_manual(values=ag)

#adding colours to graph
lb<-c("#0b59a7","#14a152")

# Create a bar chart showing the distribution of customers by age
ggplot(data, aes(x = Customer_Age, fill = Attrition_Flag)) +
  geom_bar(position = "dodge") +
  xlab("Age") +
  ylab("Number of Customers") +
  ggtitle("Distribution of Customers by Age")+
   scale_fill_manual(values=lb)

# Create a bar chart showing the distribution of churn by income category
ggplot(data, aes(x = Income_Category, fill = Attrition_Flag)) +
  geom_bar(position = "dodge") +
  xlab("Income Category") +
  ylab("Number of Customers") +
  ggtitle("Distribution of Churn by Income Category")

#adding colours to graph for colour blind people
ht=c("#64c48f","#d17869")
  
# Create a histogram showing the distribution of credit limit
ggplot(data, aes(x = Credit_Limit, fill = Attrition_Flag)) +
  geom_histogram(position = "dodge") +
  xlab("Credit Limit") +
  ylab("Number of Customers") +
  ggtitle("Distribution of Credit Limit")+
  scale_fill_manual(values=ht)

#adding colours to graph
rt=c("#3499eb","#eb34b4")

# Create a histogram showing the distribution of transaction amount
ggplot(data, aes(x = Total_Trans_Amt, fill = Attrition_Flag)) +
  geom_histogram(position = "dodge") +
  xlab("Total Transaction Amount") +
  ylab("Number of Customers") +
  ggtitle("Distribution of Transaction Amount")+
  scale_fill_manual(values=rt)

#adding colours to graph
dv=c("#e30c43","#0ce3b5")

# Create a histogram showing the distribution of average utilization ratio
ggplot(data, aes(x = Avg_Utilization_Ratio, fill = Attrition_Flag)) +
  geom_histogram(position = "dodge") +
  xlab("Average Utilization Ratio") +
  ylab("Number of Customers") +
  ggtitle("Distribution of Average Utilization Ratio")+
  scale_fill_manual(values=dv)

# Calculate the average credit limit for customers who churned versus those who did not
data %>%
  group_by(Attrition_Flag) %>%
  summarize(avg_credit_limit = mean(Credit_Limit))
