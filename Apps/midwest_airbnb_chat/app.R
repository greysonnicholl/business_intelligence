# install.packages("querychat", dependencies = T)

library(querychat)

con = DBI::dbConnect(RSQLite::SQLite(), "data/midwest_airbnb.db")

client = ellmer::chat_openai(
  model  = "gpt-5.6-luna",
  params = ellmer::params(reasoning_effort = "none")
)

qc = querychat::querychat(
  con, "listings",
  client   = client,
  tools    = c("filter", "query", "visualize"),
  greeting = "Ask me about the Midwest Airbnb listings ChatISA collected."
)

qc$app_obj()



