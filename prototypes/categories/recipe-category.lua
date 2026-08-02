local khaoslib_entity = require("__khaoslib__.prototypes.entity")

data:extend {
  {
    type = "recipe-category",
    name = "synthetic-diamond",
  }
}

local furnace = khaoslib_entity.get("furnace", "electric-furnace")

--- @cast furnace data.FurnacePrototype
furnace.crafting_categories = furnace.crafting_categories or {}
if type(furnace.crafting_categories) ~= "table" then
  --- @diagnostic disable-next-line: assign-type-mismatch
  furnace.crafting_categories = {furnace.crafting_categories}
end

table.insert(furnace.crafting_categories, "synthetic-diamond")
data.raw["furnace"]["electric-furnace"].crafting_categories = furnace.crafting_categories
