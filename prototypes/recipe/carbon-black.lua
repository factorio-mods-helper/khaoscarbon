local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["khaoscarbon-carbon-black"].value then
  khaoslib_recipe:load {
    type = "recipe",
    name = "carbon-black",
    subgroup = "intermediate-product",
    order = "bb[carbon]-d[carbon-black]",
    enabled = false,
    allow_productivity = true,
    energy_required = 1,
    main_product = "carbon-black",
  } :set_categories {"chemistry"}
    :set_icons {{icon = "__khaoscarbon__/graphics/icons/carbon-black.png", icon_size = 64}}
    :set_ingredients {
      {type = "item", name = "coal", amount = 1},
    }
    :set_results {
      {type = "item", name = "carbon-black", amount = 1},
    }
    :add_unlock("plastics")
    :commit()
end
