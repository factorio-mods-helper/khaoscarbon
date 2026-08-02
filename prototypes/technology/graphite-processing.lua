local khaoslib_entity = require("__khaoslib__.prototypes.entity")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

local tech = khaoslib_technology:load {
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

if khaoslib_entity.exists("assembling-machine", "basic-crusher") then
  tech:add_unlock_recipe("basic-crusher")
end

tech:commit()
