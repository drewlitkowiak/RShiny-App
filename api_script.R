library(rtweet)

group1 = c("adidas", "Nike", "UnderArmour")
group2 = c("Apple", "Microsoft")
group3 = c("MACcosmetics", "BobbiBrown", "EsteeLauder")
group4 = c("Nordstrom", "Macys", "Kohls")
group5 = c("Forever21", "Topshop", "UrbanOutfitters", "VictoriasSecret")
group6 = c("LouisVuitton", "CalvinKlein", "giorgioarmani")
group7 = c("realDonaldTrump", "BarackObama", "HillaryClinton")
group8 = c("amazon", "eBay")
group9 = c("patagonia", "thenorthface", "Arcteryx")
group10 = c("steam_games", "RockstarGames", "NintendoAmerica")
group11 = c("HomeDepot", "AceHardware", "Lowes")

app_name = "Stat 385 Group Project"
api_key = "orp3CeTZzR6Ac0qyoNJC7WMkQ"
api_secret_key = "auKzXFWOwA1IGb6OxNYpU63ovnpRI5mxoT8b32fOEYO4X4ngtU"

create_token(
  app = app_name,
  consumer_key = api_key,
  consumer_secret = api_secret_key
)


#' A function that accepts one of the groups above and checks word occurrences
#' in tweets to see if one of the words exist. If it does, then it will
#' store the tweets as a json file.
#'
#' @param group The group of keywords to search for in a tweet
#' @param timeout Measured in seconds. The amount of time this program
#'                will run for.
#' @param file_name The name of the file to store the parsed results in.
#'                  It defaults to the name of the "group" variable.
#' @param parse Whether or not to continuously store the data in a table.
#'              good for really small timeouts, bad for really large ones.
#' @param language defaults to "en", which only parses English speaking comments.
my_stream = function(group, timeout = 60, file_name = deparse(substitute(group)), parse = FALSE, language = "en") {
  stream_tweets(
    q = paste0(group, collapse = ","),
    timeout = timeout,
    parse = parse,
    file_name = file_name,
    language = language
  )
}