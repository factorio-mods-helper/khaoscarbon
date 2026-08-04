local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["khaoschlorine"] and settings.startup["khaoscarbon-carbon-fiber"].value then
  khaoslib_recipe:load {
    type = "recipe",
    name = "polyacrylonitrile",
    subgroup = "intermediate-product",
    order = "bb[carbon]-f[polyacrylonitrile]",
    enabled = false,
    allow_productivity = true,
    energy_required = 1,
    main_product = "polyacrylonitrile",
  } :set_categories {"chemistry"}
    :set_icons {{icon = "__khaoscarbon__/graphics/icons/polyacrylonitrile.png", icon_size = 64}}
    :set_ingredients {
      {type = "fluid", name = "petroleum-gas", amount = 10},
    }
    :set_results {
      {type = "item", name = "polyacrylonitrile", amount = 1},
    }
    :commit()
end
