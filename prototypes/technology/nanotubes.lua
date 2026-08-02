local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if settings.startup["khaoscarbon-fullerenes-nanotubes"].value then
  khaoslib_technology:load {
    type = "technology",
    name = "nanotubes",
    order = "b-b",
  } :set_icons {{icon = "__khaoscarbon__/graphics/technology/nanotubes.png", icon_size = 256}}
    :set_prerequisites {"space-science-pack"}
    :set_unit {
      time = 60,
      count = 1000,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
      },
    }
    :add_unlock_recipe("nanotubes")
    :commit()
end
