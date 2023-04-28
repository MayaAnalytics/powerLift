#' Functions in the "powerLift" package and examples

#' Function 1: lbToKg
#' @title lbToKg
#' @description converts pounds to kilograms
#' @param x in pounds
#' @returns kg in kilos
#' @example Example: John is 170
#' x <- 170
#' cat("Pounds:", x)
#' cat("Kilograms:", lbToKg(x))

lbToKg <- function(x) {
  kg <- x*0.45359237
  return(kg)
}


#' Function 2: totalKg
#' @title totalKg
#' @description calculates total weight lifted in kilograms
#' @param x squat
#' @param y bench
#' @param z deadlift
#' @return totalKg
#' @example Example: Squat=100 Bench=50 Deadlift=200
#' x <- 100
#' y <- 50
#' z <- 200
#' cat("Total Kg Lifted:", totalKg(x, y, z))

totalKg <- function(x,y,z) {
  totalKg <- (x + y + z)
  return(totalKg)
}


#' Function 3: oneRM
#' @title oneRM
#' @description calculates the most you can lift for one rep based on weight and number
#' of past reps. One Rep Max is the max weight you can lift for one rep.
#' @param w weight
#' @param r number of reps
#' @returns oneRM predicted One Rep Max
#' @example Example: I can lift 100 Kg 5 times
#' w <- 100
#' r <- 5
#' cat("I can lift:", w, "kg", r, "times")
#' cat("My One Rep Max is:", oneRM(w,r))

oneRM<- function(w, r) {
  oneRM <- (w/((1.0278)-(0.0278 * r)))
  return(oneRM)
}


#' Function 4: protein
#' @title protein
#' @description calculates suggested protein intake (grams) based on weight (kg)
#' The National Insititue of Health (NIH) suggests 1.5-2.0 grams of protein
#' for strength-training athletes. This function uses 1.5 to demonstrate minimum goal.
#' Find additional info here https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2951052/
#' @param w weight
#' @return protein suggested protein goal in grams
#' @example Example: I weigh 63 Kg
#' w <- 63
#' cat("I weigh", w, "kg, so I should eat:", protein(w), "grams of protein")

protein<- function(w) {
  protein <- (w*1.5)
  return(protein)
}


#' Function 5 liftViz
#' @title liftViz
#' @description creates variety of visualizations based on competition data using ggplot2 without the hassle of writing each plot by hand
#' @param df Dataframe
#' @param sq Squat
#' @param bn Bench
#' @param dl Deadlift
#' @return visualizations
#' @example Example: group of friends data
#' squat <- c(150, 260, 100)
#' dlift <- c(260, 280, 250)
#' bench <- c(90, 165, 50)
#' data2 <- data.frame(squat, dlift, bench)
#' liftViz(data2, squat, bench, dlift)

liftViz <- function(df, sq, bn, dl) {
  ggplot(df, aes(x = dl, y = sq, color = bn)) +
    geom_point() +
    labs(title ="Deadlift, Squat, and Bench Correlation",
         x = "Deadlift (kg)", y = "Squat (Kg)", color = "Bench (Kg)")
}

