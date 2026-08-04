local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if mods["khaoschlorine"] and settings.startup["khaoscarbon-carbon-fiber"].value then
  khaoslib_technology:load {
    type = "technology",
    name = "carbon-fiber",
    localised_name = {"item-name.carbon-fiber"},
    order = "b-b",
  } :set_icons {{icon = "__khaoscarbon__/graphics/technology/carbon-fiber.png", icon_size = 256}}
    :set_prerequisites {"chemical-science-pack", "plastics"}
    :set_unit {
      time = 10,
      count = 30,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
    }
    :add_unlock_recipe("polyacrylonitrile")
    :add_unlock_recipe("carbon-fiber")
    :commit()

  khaoslib_technology:load("low-density-structure"):add_prerequisite("carbon-fiber"):commit()
  khaoslib_technology:load("exoskeleton-equipment"):add_prerequisite("carbon-fiber"):commit()
  khaoslib_technology:load("military-4"):add_prerequisite("carbon-fiber"):commit()
end
