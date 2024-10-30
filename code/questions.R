### Uncertainty quiz based on Spiegelhalter, David: "The art of uncertainty"

rm(list = ls())

## Create the data ---------------------------------

q01 <- list("question" = "Which is higher?",
           "options" = c("a" = "The Eifel tower", "b" = "The empire state building"),
           "answer" = "b")

q02 <- list("question" = "Who is older?",
           "options" = c("a" = "The Prince of Wales(William)", "b" = "The Princess of Wales (Kate)"),
           "answer" = "b")

q03 <- list("question" = "Which is larger?",
           "options" = c("a" = "Croatia", "b" = "Czech Republic"),
           "answer" = "b")

q04 <- list("question" = "Which has the larger population?",
           "options" = c("a" = "Luxembourg", "b" = "Iceland"),
           "answer" = "a")

q05 <- list("question" = "Which has more words?",
           "options" = c("a" = "The Old Testament (King James Verion)", "b" = "War and Peace (in English)"),
           "answer" = "a")

q06 <- list("question" = "Which had the highest IMDb rankings (2023)?",
           "options" = c("a" = "Godfather 2", "b" = "Paddington 2"),
           "answer" = "a")

q07 <- list("question" = "Which is bigger?",
           "options" = c("a" = "Venus", "b" = "Earth"),
           "answer" = "b")

q08 <- list("question" = "Which is furthest north?",
           "options" = c("a" = "New Delhi", "b" = "Kathmandu"),
           "answer" = "a")

q09 <- list("question" = "Which weights more?",
           "options" = c("a" = "A London double-decker bus (empty)", "b" = "Two average male African elephants"),
           "answer" = "a")

q10 <- list("question" = "Who died first?",
           "options" = c("a" = "Beethoven", "b" = "Napoleon"),
           "answer" = "b")


# Collect the information
questions <- mget(ls(pattern = "q"))

# Save the questions
save(questions, file = "data/questions.Rda")

### END ########################################