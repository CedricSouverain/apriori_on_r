# Library used to create the association rules
library(arules)
# Visualisation
library(arulesViz)
# Import datasets
library(datasets)


data(Groceries)

# Printing the frequency of every items
itemFrequencyPlot(Groceries,topN=20,type="absolute")

# Get the rules with our parameters
rules <- apriori(Groceries, parameter = list(supp = 0.001, conf = 0.8))

# Show the top 5 rules, but only 2 digits
options(digits=2)
inspect(rules[1:5])
