local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["khaoscarbon-fullerenes-nanotubes"].value then
  khaoslib_recipe:load {
    type = "recipe",
    name = "fullerenes",
    subgroup = "intermediate-product",
    order = "bb[carbon]-b[fullerenes]",
    enabled = false,
    allow_productivity = true,
    energy_required = 1,
    main_product = "fullerenes",
  } :set_categories {"advanced-crafting"}
    :set_icons {{icon = "__khaoscarbon__/graphics/icons/fullerenes.png", icon_size = 64}}
    :set_ingredients {
      {type = "item", name = "graphite", amount = 2},
    }
    :set_results {
      {type = "item", name = "fullerenes", amount = 20},
    }
    :commit()
end
