local khaoslib_technology = require("__khaoslib__.prototypes.technology")

local tech = khaoslib_technology:load {
  type = "technology",
  name = "diamond-processing",
  order = "b-b",
} :set_icons {{icon = "__khaoscarbon__/graphics/technology/diamond-processing.png", icon_size = 256}}
  :set_prerequisites {"advanced-material-processing-2"}
  :set_unit {
    time = 15,
    count = 100,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
    },
  }
  :add_unlock_recipe("synthetic-diamond")

if settings.startup["khaoscarbon-rough-diamond"].value then
  tech:add_unlock_recipe("diamond")
end

tech:commit()
