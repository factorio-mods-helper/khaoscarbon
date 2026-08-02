local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

local recipe = khaoslib_recipe:load {
  type = "recipe",
  name = "synthetic-diamond",
  localised_name = {"item-name.diamond"},
  subgroup = "raw-material",
  order = "ab[crushing]-ba[diamond]",
  enabled = false,
  allow_productivity = true,
  energy_required = 20,
  main_product = "diamond",
} :set_categories {"synthetic-diamond"}
  :set_icons {{icon = "__khaoscarbon__/graphics/icons/diamond.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "graphite", amount = 10},
  }
  :set_results {
    {type = "item", name = "diamond", amount = 1},
  }

if settings.startup["khaoscarbon-rough-diamond"].value then
  recipe:add_icon {icon = "__khaoscarbon__/graphics/icons/graphite-2.png", icon_size = 64, scale = 0.25, shift = {-8, -8}}
end

recipe:commit()
