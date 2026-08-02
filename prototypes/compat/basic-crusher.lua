local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if data.raw["assembling-machine"]["basic-crusher"] then
  khaoslib_recipe:load("basic-crusher")
    :remove_ingredient("steel-plate")
    :replace_ingredient("iron-plate", function(ingredient) ingredient.amount = ingredient.amount + 20 return ingredient end)
    :remove_unlock("automation-2")
    :commit()
end
