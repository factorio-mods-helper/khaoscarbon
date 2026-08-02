local khaoslib_technology = require("__khaoslib__.prototypes.technology")

khaoslib_technology:load {
  type = "technology",
  name = "graphite-processing",
  order = "b-b",
} :set_icons {{icon = "__khaoscarbon__/graphics/technology/graphite-processing.png", icon_size = 256}}
  :set_prerequisites {"steam-power"}
  :set {
    research_trigger = {
      type = "mine-entity",
      entities = {"flake-graphite"}
    }
  }
  :add_unlock_recipe("graphite")
  :add_unlock_recipe("basic-crusher")
  :commit()
