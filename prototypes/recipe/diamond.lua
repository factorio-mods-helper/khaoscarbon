local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["khaoscarbon-rough-diamond"].value then
  khaoslib_recipe:load {
    type = "recipe",
    name = "diamond",
    subgroup = "raw-material",
    order = "ab[crushing]-b[diamond]",
    enabled = false,
    allow_productivity = true,
    energy_required = 20,
    main_product = "diamond",
  } :set_categories {"advanced-crafting"}
    :set_icons {{icon = "__khaoscarbon__/graphics/icons/diamond.png", icon_size = 64}}
    :set_ingredients {
      {type = "item", name = "rough-diamond", amount = 1},
    }
    :set_results {
      {type = "item", name = "diamond", amount = 1, independent_probability = 0.8},
      {type = "item", name = "stone", amount = 1, independent_probability = 0.2},
    }
    :commit()
end
