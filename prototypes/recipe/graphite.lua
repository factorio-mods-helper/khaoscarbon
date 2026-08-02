local khaoslib_entity = require("__khaoslib__.prototypes.entity")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load {
  type = "recipe",
  name = "graphite",
  subgroup = "raw-material",
  order = "ab[crushing]-a[graphite]",
  enabled = false,
  allow_productivity = true,
  energy_required = 0.5,
  main_product = "graphite",
} :set_categories(khaoslib_entity.exists("assembling-machine", "basic-crusher") and {"basic-crushing", "hand-crafting"} or {"crafting"})
  :set_icons {{icon = "__khaoscarbon__/graphics/icons/graphite.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "flake-graphite", amount = 1},
  }
  :set_results {
    {type = "item", name = "graphite", amount = 1},
  }
  :commit()
