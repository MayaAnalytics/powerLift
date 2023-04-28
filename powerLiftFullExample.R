#' Full example

library(ggplot2)
#' download and load data
df <- read.csv("CompetitionData.csv")

#' calculate kilograms for BodyWeight, Squat, Bench, and Deadlift and create column
df$bw <- lbToKg(df$BodyWeightLb)
df$sq <- lbToKg(df$SquatLb)
df$bn <- lbToKg(df$BenchLb)
df$dl <- lbToKg(df$DeadliftLb)
head(df)

#' calculate total kg lifted and create new column
df$totalKg <- totalKg(df$sq, df$bn, df$dl)
head(df)

#' convert to kg
#' calculate One Rep Max based on Practice Squat Weight (w) and Reps (r)
#' recorded during past training

df$Sq1RM <- oneRM(lbToKg(df$TestSqW), lbToKg(df$TestSqR))
head(df)

#' calculate how much protein each athlete should intake and make a new column
df$Protein <- protein(df$bw)
head(df)

#' create a visual comparing squat bench, and deadlift
liftViz(df, sq, bn, dl)
