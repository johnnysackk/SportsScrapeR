library(rvest)

x <- 1

teamList <- list('crd', 'atl', 'rav', 'buf', 'car', 'chi', 'cin', 'cle', 'dal', 'den', 'det', 'gnb', 'htx', 'clt', 'jax', 'kan', 'sdg', 'ram', 'mia', 'min', 'nwe', 'nor', 'nyg', 'nyj', 'rai', 'phi', 'pit', 'sfo', 'sea', 'tam', 'oti', 'was')

team <- teamList[[x]]

setwd("C:/Users/johnny.burke/Documents/R/2019NFLOffense")

offenseLog <- function(team) {
  url <- read_html(paste0("https://www.pro-football-reference.com/teams/", team, "/2019/gamelog/"))
  file <- paste0("offense", team, "2019.csv")
  table <- url %>%
    html_nodes("table") %>%
    .[1] %>%
    html_table(fill = TRUE)
  write.csv(table, file=file)
}

lapply(teamList, offenseLog)

setwd("C:/Users/johnny.burke/Documents/R/2019NFLDefense")

defenseLog <- function(team) {
  url <- read_html(paste0("https://www.pro-football-reference.com/teams/", team, "/2019/gamelog/"))
  file <- paste0("defense", team, "2019.csv")
  table <- url %>%
    html_nodes("table[id='gamelog_opp2019']") %>%
    html_table(fill = TRUE)
  write.csv(table, file=file)
}


lapply(teamList, defenseLog)
