# Create the scoring system

scoring <- data.frame(
  "confidence" = 5:10,
  "correct" = c(0, 9, 16, 21, 24, 25),
  "wrong" = c(0, -11, -24, -39, -56, -75)
)

# Save the scoring system
save(scoring,  file = "data/scoring.Rda")


### END ########################