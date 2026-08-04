local khaoslib_item = require("__khaoslib__.prototypes.item")

if mods["khaoschlorine"] and settings.startup["khaoscarbon-carbon-fiber"].value then
  khaoslib_item:load {
    type = "item",
    name = "polyacrylonitrile",
    subgroup = "intermediate-product",
    order = "bb[carbon]-f[polyacrylonitrile]",
    stack_size = 100,
  } :set_icons {{icon = "__khaoscarbon__/graphics/icons/polyacrylonitrile.png", icon_size = 64}}
    :commit()
end
