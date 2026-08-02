local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["khaosfoundry"] then
khaoslib_recipe:load("steel-plate")
  :replace_ingredient("iron-plate", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 1) return ingredient end)
  :add_ingredient {type = "item", name = "graphite", amount = 1}
  :commit()
end
