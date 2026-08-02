local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

local recipe = khaoslib_recipe:load {
  type = "recipe",
  name = "crucible",
  subgroup = "intermediate-product",
  order = "bb[carbon]-e[crucible]",
  enabled = false,
  allow_productivity = true,
  energy_required = 3,
  main_product = "crucible",
} :set_categories {"crafting"}
  :set_icons {{icon = "__khaoscarbon__/graphics/icons/crucible.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "graphite", amount = 5},
    {type = "item", name = "stone-brick", amount = 5},
  }
  :set_results {
    {type = "item", name = "crucible", amount = 2},
  }
  :add_unlock("advanced-material-processing-2")

if mods["khaossilicon"] then
  recipe:add_ingredient {type = "item", name = "silica", amount = 5}
    :replace_result("crucible", function (result) result.amount = result.amount and result.amount + 1 or 1 return result end)
end

if mods["khaoszirconium"] then
  recipe:add_ingredient {type = "item", name = "zirconia", amount = 5}
    :replace_result("crucible", function (result) result.amount = result.amount and result.amount + 1 or 1 return result end)
end

recipe:commit()
