local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["khaoscarbon-carbon-black"].value then
  khaoslib_recipe:load {
    type = "recipe",
    name = "graphite-carbon-black",
    subgroup = "intermediate-product",
    order = "bb[carbon]-da[graphite]",
    enabled = false,
    allow_productivity = true,
    energy_required = 1,
    main_product = "graphite",
  } :set_categories {"chemistry"}
    :set_icons {
      {icon = "__khaoscarbon__/graphics/icons/carbon-black.png", icon_size = 64, scale = 0.5, shift = {-8, -8}},
      {icon = "__khaoscarbon__/graphics/icons/graphite-2.png", icon_size = 64},
    }
    :set_ingredients {
      {type = "item", name = "carbon-black", amount = 10},
    }
    :set_results {
      {type = "item", name = "graphite", amount = 1},
    }
    :add_unlock("oil-processing")
    :commit()
end
