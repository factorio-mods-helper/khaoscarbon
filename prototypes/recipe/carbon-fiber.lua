local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["khaoschlorine"] and settings.startup["khaoscarbon-carbon-fiber"].value then
  local recipe = khaoslib_recipe:load {
    type = "recipe",
    name = "carbon-fiber",
    subgroup = "intermediate-product",
    order = "bb[carbon]-g[carbon-fiber]",
    enabled = false,
    allow_productivity = true,
    energy_required = 24,
    main_product = "carbon-fiber",
  } :set_categories {"advanced-crafting"}
    :set_icons {{icon = "__khaoscarbon__/graphics/icons/carbon-fiber.png", icon_size = 64}}
    :set_ingredients {
      {type = "fluid", name = "epoxy", amount = 20},
      {type = "item", name = "plastic-bar", amount = 2},
      {type = "item", name = "polyacrylonitrile", amount = 4},
    }
    :set_results {
      {type = "item", name = "carbon-fiber", amount = 8},
    }

  if mods["khaossilicon"] then
    recipe:replace_ingredient("plastic-bar", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 1) return ingredient end)
      :add_ingredient {type = "item", name = "silica", amount = 2}
  end

  recipe:commit()
end
