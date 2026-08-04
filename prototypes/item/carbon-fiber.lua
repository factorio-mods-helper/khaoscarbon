local khaoslib_item = require("__khaoslib__.prototypes.item")

if mods["khaoschlorine"] and settings.startup["khaoscarbon-carbon-fiber"].value then
  khaoslib_item:load {
    type = "item",
    name = "carbon-fiber",
    subgroup = "intermediate-product",
    order = "bb[carbon]-g[carbon-fiber]",
    stack_size = 100,
  } :set_icons {{icon = "__khaoscarbon__/graphics/icons/carbon-fiber.png", icon_size = 64}}
    :commit()
end
