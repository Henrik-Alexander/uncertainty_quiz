rm(list = ls())

# Load the functions
source("code/functions.R")

## Load the data
load("data/scoring.Rda")
load("data/questions.Rda")

# Explain rules
explain_rules()

# Play the game
results <- sapply(1:10, ask_question)


print_result(results)
