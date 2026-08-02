local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load {
  type = "recipe",
  name = "graphene",
  subgroup = "intermediate-product",
  order = "bb[carbon]-a[graphene]",
  enabled = false,
  allow_productivity = true,
  energy_required = 5,
  main_product = "graphene",
} :set_categories {"chemistry"}
  :set_icons {{icon = "__khaoscarbon__/graphics/icons/graphene.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "graphite", amount = 1},
    {type = "fluid", name = "water", amount = 10},
    {type = "fluid", name = "sulfuric-acid", amount = 10},
  }
  :set_results {
    {type = "item", name = "graphene", amount = 1},
  }
  :commit()
