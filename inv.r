# Load Libs ---------------------------------------------------------------
library(googlesheets4)
library(jsonlite)

inv = googlesheets4::read_sheet(
  "https://docs.google.com/spreadsheets/d/1t9Y1JzNuG85oG_vXLXmSPVuFg9vP8PpGle_3dtOZa0o/edit?usp=sharing"
  )
json = jsonlite::toJSON(list( inv = inv))
jsonlite::write_json(json,"inv.json")

