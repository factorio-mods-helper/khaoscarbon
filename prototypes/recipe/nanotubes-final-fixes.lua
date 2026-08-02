local flib_locale = require("__flib__.locale")
local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
-- local khaoslib_technology = require("__khaoslib__.prototypes.technology")

local function create_nanotube_recipe(recipe_name, item_name, tech_name)
  tech_name = tech_name or "nanotubes"
  item_name = item_name or recipe_name

  local recipe = khaoslib_recipe.copy(recipe_name, recipe_name .. "-nanotubes")
    :set {localised_name = {"recipe-name.with-nanotubes", flib_locale.of("recipe", recipe_name)}}
    :set_icons(khaoslib_item.get_icons(item_name))
    :add_icon {icon = "__khaoscarbon__/graphics/icons/nanotubes.png", icon_size = 64, scale = 0.25, shift = {-8, -8}}

  local amount = ((recipe:get_result(item_name) --[[@cast -?]].amount or 1) * 2) --[[@as integer]]

  recipe:add_ingredient {type = "item", name = "nanotubes", amount = amount}
    :replace_result(item_name, function(result) result.amount = amount return result end)
    :add_unlock(tech_name)
    :commit()
end

--[[
local function add_to_productivity_research(tech_name, recipe_name)
  khaoslib_technology:load(tech_name):add_effect {type = "change-recipe-productivity", recipe = recipe_name, change = 0.1} :commit()
end
]]

create_nanotube_recipe("low-density-structure")
-- add_to_productivity_research("low-density-structure-productivity", "low-density-structure-nanotubes")
