local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

khaoslib_technology:load("steam-power"):add_effect {type = "mining-with-fluid", modifier = true} :commit()
khaoslib_technology:load("steel-processing"):add_prerequisite("graphite-processing"):commit()

khaoslib_technology:load("low-density-structure"):add_prerequisite("diamond-processing"):commit()
khaoslib_technology:load("laser"):add_prerequisite("diamond-processing"):commit()

khaoslib_technology:load("power-armor-mk2"):add_prerequisite("graphene"):commit()
khaoslib_recipe:load("power-armor-mk2"):add_ingredient {type = "item", name = "graphene", amount = 30} :commit()

khaoslib_technology:load("electronics"):add_prerequisite("graphite-processing"):commit()
khaoslib_recipe:load("electric-furnace")
  :add_ingredient {type = "item", name = "crucible", amount = 1}
  :remove_ingredient("stone-brick")
  :remove_ingredient("silica")
  :remove_ingredient("zirconia")
  :commit()

local electronic_circuit = khaoslib_recipe:load("electronic-circuit")
local electronic_circuit_result = electronic_circuit:get_result("electronic-circuit")
if electronic_circuit_result and electronic_circuit_result.amount == 1 then
  electronic_circuit:replace_result(function(_) return true end, function(result) result.amount = result.amount and result.amount * 2 or 0 return result end, {all = true})
    :set {energy_required = 0.5}
end

electronic_circuit:replace_ingredient("copper-cable", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 2) return ingredient end)
  :add_ingredient {type = "item", name = "graphite", amount = 1}
  :commit()

if settings.startup["khaoscarbon-fullerenes-nanotubes"].value then
  khaoslib_technology:load("military-3"):add_prerequisite("fullerenes"):commit()

  khaoslib_recipe:load("poison-capsule")
    :replace_ingredient("coal", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 9) return ingredient end)
    :add_ingredient {type = "item", name = "fullerenes", amount = 90}
    :commit()

  khaoslib_recipe:load("slowdown-capsule")
    :replace_ingredient("coal", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 4) return ingredient end)
    :add_ingredient {type = "item", name = "fullerenes", amount = 40}
    :commit()
end

if settings.startup["khaoscarbon-carbon-black"].value then
  khaoslib_recipe:load("plastic-bar"):replace_ingredient("coal", function(ingredient) ingredient.name = "carbon-black" return ingredient end):commit()
  khaoslib_recipe:load("basic-oil-processing"):add_result {type = "item", name = "carbon-black", amount = 1} :commit()
  khaoslib_recipe:load("advanced-oil-processing"):add_result {type = "item", name = "carbon-black", amount = 1} :commit()
  khaoslib_recipe:load("light-oil-cracking"):add_result {type = "item", name = "carbon-black", amount = 1} :commit()
  khaoslib_recipe:load("heavy-oil-cracking"):add_result {type = "item", name = "carbon-black", amount = 1} :commit()
  khaoslib_recipe:load("coal-liquefaction"):add_result {type = "item", name = "carbon-black", amount = 1} :commit()
end

khaoslib_recipe:load("battery"):add_ingredient {type = "item", name = "graphite", amount = 1} :commit()
khaoslib_recipe:load("pump"):add_ingredient {type = "item", name = "graphite", amount = 2} :commit()

khaoslib_recipe:load("speed-module-2"):add_ingredient {type = "item", name = "diamond", amount = 1} :commit()
khaoslib_recipe:load("efficiency-module-2"):add_ingredient {type = "item", name = "diamond", amount = 1} :commit()
khaoslib_recipe:load("productivity-module-2"):add_ingredient {type = "item", name = "diamond", amount = 1} :commit()

if mods["quality"] then
  khaoslib_recipe:load("quality-module-2"):add_ingredient {type = "item", name = "diamond", amount = 1} :commit()
end

khaoslib_recipe:load("laser-turret"):add_ingredient {type = "item", name = "diamond", amount = 1} :commit()
khaoslib_recipe:load("assembling-machine-3"):add_ingredient {type = "item", name = "diamond", amount = 4} :commit()

khaoslib_recipe:load("low-density-structure"):add_ingredient {type = "item", name = "diamond", amount = 1} :commit()

khaoslib_recipe:load("lubricant")
  :set {energy_required = (khaoslib_recipe.get("lubricant").energy_required --[[@as double]]) * 2}
  :replace_result("lubricant", function(result) result.amount = result.amount and result.amount * 2 or 0 return result end)
  :replace_ingredient("heavy-oil", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 10) return ingredient end)
  :add_ingredient {type = "item", name = "graphite", amount = 1}
  :commit()

khaoslib_recipe:load("nuclear-reactor"):add_ingredient {type = "item", name = "graphite", amount = 500} :commit()

khaoslib_technology:load("rocket-silo"):add_prerequisite("graphene"):commit()
khaoslib_recipe:load("satellite"):add_ingredient {type = "item", name = "graphene", amount = 100} :commit()
