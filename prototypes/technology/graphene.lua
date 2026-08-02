local khaoslib_technology = require("__khaoslib__.prototypes.technology")

local tech = khaoslib_technology:load {
  type = "technology",
  name = "graphene",
  localised_name = {"item-name.graphene"},
  order = "b-b",
} :set_icons {{icon = "__khaoscarbon__/graphics/technology/graphene.png", icon_size = 256}}
  :set_prerequisites {"production-science-pack", "utility-science-pack"}
  :set_unit {
    time = 60,
    count = 400,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"production-science-pack", 1},
      {"utility-science-pack", 1},
    },
  }
  :add_unlock_recipe("graphene")

if settings.startup["khaoscarbon-fullerenes-nanotubes"].value then
  tech:add_prerequisite("fullerenes")
end

tech:commit()
