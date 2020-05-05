library(jsonlite)

x <- 1

NineteenRaceIDs <- c(4773, 4774, 4775, 4776, 4777, 4778, 4779, 4780, 4782, 4783, 4784, 4787, 4788, 4789, 4790, 4791, 4792, 4793, 4794, 4795, 4796, 4797, 4798, 4799, 4800, 4801, 4802, 4803, 4804, 4805, 4806, 4807, 4808, 4809)

NineteenRace <- NineteenRaceIDs[[x]]

NineteenPracticeOne <- function(NineteenRace) {
  url <- fromJSON(paste0("https://www.nascar.com/cacher/2019/1/", NineteenRace, "/practice1.json"))
  file <- paste0("Race", NineteenRace, "Practice1.csv")
  write.csv(url, file=file)
}

lapply(NineteenRaceIDs, NineteenPracticeOne)

NineteenPracticeTwo <- function(NineteenRace) {
  url <- fromJSON(paste0("https://www.nascar.com/cacher/2019/1/", NineteenRace, "/practice2.json"))
  file <- paste0("Race", NineteenRace, "Practice2.csv")
  write.csv(url, file=file)
}

lapply(NineteenRaceIDs, NineteenPracticeTwo)

NineteenPracticeThree <- function(NineteenRace) {
  url <- fromJSON(paste0("https://www.nascar.com/cacher/2019/1/", NineteenRace, "/lapAvg_mencs_final_practice.json"))
  file <- paste0("Race", NineteenRace, "Practice3.csv")
  write.csv(url, file=file)
}

lapply(NineteenRaceIDs, NineteenPracticeThree)

NineteenPracticeQualify <- function(NineteenRace) {
  url <- fromJSON(paste0("https://www.nascar.com/cacher/2019/1/", NineteenRace, "/qualification.json"))
  file <- paste0("Race", NineteenRace, "Qualify.csv")
  write.csv(url, file=file)
}

lapply(NineteenRaceIDs, NineteenPracticeQualify)

NineteenRaceResults <- function(NineteenRace) {
  url <- fromJSON(paste0("https://www.nascar.com/cacher/2019/1/", NineteenRace, "/raceResults.json"))
  file <- paste0("Race", NineteenRace, "Results.csv")
  write.csv(url, file=file)
}

lapply(NineteenRaceIDs, NineteenRaceResults)
