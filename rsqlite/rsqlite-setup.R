
# Einmalige Installation
# install.packages("RSQLite")
# install.packages("gapminder")

library(gapminder)
library(DBI)

con <- dbConnect(RSQLite::SQLite(), ":memory:")

dbWriteTable(con, "gapminder", gapminder)

# Verbindung zu der Datenbank beenden (am Ende der Bearbeitung)
# dbDisconnect(con)