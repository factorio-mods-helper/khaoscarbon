local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

if settings.startup["khaoscarbon-carbon-black"].value then
  khaoslib_item:load {
    type = "item",
    name = "carbon-black",
    subgroup = "intermediate-product",
    order = "bb[carbon]-d[carbon-black]",
    stack_size = 100,
    weight = 1 * kg,

    inventory_move_sound = item_sounds.sulfur_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.sulfur_inventory_move,
  } :set_icons {{icon = "__khaoscarbon__/graphics/icons/carbon-black.png", icon_size = 64}}
    :commit()
end
