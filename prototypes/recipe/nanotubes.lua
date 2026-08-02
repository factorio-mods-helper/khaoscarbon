local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["khaoscarbon-fullerenes-nanotubes"].value then
  khaoslib_recipe:load {
    type = "recipe",
    name = "nanotubes",
    subgroup = "intermediate-product",
    order = "bb[carbon]-c[nanotubes]",
    enabled = false,
    allow_productivity = true,
    energy_required = 20,
    main_product = "nanotubes",
  } :set_categories {"chemistry"}
    :set_icons {{icon = "__khaoscarbon__/graphics/icons/nanotubes.png", icon_size = 64}}
    :set_ingredients {
      {type = "item", name = "fullerenes", amount = 1},
      {type = "item", name = "iron-plate", amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1},
      {type = "fluid", name = "sulfuric-acid", amount = 10, ignored_by_stats = 10, ignored_by_productivity = 10},
    }
    :set_results {
      {type = "item", name = "nanotubes", amount = 1},
      {type = "item", name = "iron-plate", amount = 1, independent_probability = 0.95, ignored_by_stats = 1, ignored_by_productivity = 1},
      {type = "fluid", name = "sulfuric-acid", amount = 9, ignored_by_stats = 9, ignored_by_productivity = 9},
    }
    :commit()
end
