# Load the data
source("code/questions.R")
source("code/scoring.R")

# Create the data
title <- "Do you know what you don't know"
intro <- "Consider the questions listed below. In each case (either A or B) is the correct answer. The rules are simple."
rule1 <- "1. Decide which answer you feel is most likely to be correct."
rule2 <- "2. Quantify your confidence on a scale from 5 to 10. So if you are certain A is correct then you should give A 10/10. But if you are only around 70% sure, than give 7/10. If you have no clue then give 5/10 to either choice."
rule3 <- "3. No cheating!"


# Print the program

# Create the container
results <- numeric(length = 10)

# Explain the rules
explain_rules <- function() {
      cat(title, "\n")
      cat(intro, "\n")
      cat(rule1, "\n")
      cat(rule2, "\n")
      cat(rule3, "\n \n")
      
      cat("----------------\n")
      cat("Game starts! \n")
}


# Make the questions
ask_question <- function(number) {
  q <- questions[[number]]
  cat("----------------\n")
  cat(q$question, "\n")
  print(q$options)
  a <- readline("What is the correct answer (a or b)? ")
  if (!(a %in% c("a", "b"))) {
    stop("You have to answer with a or b!")
  }
  c <- readline("How certain are you about your answer? ")
  if (!(c %in% 5:10)) {
    stop("You have to provide a confidence score between 5 and 10! ")
  }
  if (a == q["answer"]) {
    points <- scoring$correct[scoring$confidence == c]
  } else {
    points <- scoring$wrong[scoring$confidence == c]
  }
  return(points)
}


## Print the result ---------------------

# Print the results
print_result <- function(results) {
  total_points <- sum(results)
  cat("----------------------------\n")
  cat("Finished!")
  cat("You got ", total_points, "points! \n")
  if (total_points > 80) {
    print("You reached a reasonable good score!")
  } else if (total_points <= 80 & total_points >= 0) {
    print("A fairly low, but positive score")
  } else {
    print("You should not give adivce to other people!")
  }
}
