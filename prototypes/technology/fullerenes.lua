local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if settings.startup["khaoscarbon-fullerenes-nanotubes"].value then
  khaoslib_technology:load {
    type = "technology",
    name = "fullerenes",
    localised_name = {"item-name.fullerenes"},
    order = "b-b",
  } :set_icons {{icon = "__khaoscarbon__/graphics/technology/fullerenes.png", icon_size = 256}}
    :set_prerequisites {"oil-processing", "chemical-science-pack"}
    :set_unit {
      time = 60,
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
    }
    :add_unlock_recipe("fullerenes")
    :commit()
end
