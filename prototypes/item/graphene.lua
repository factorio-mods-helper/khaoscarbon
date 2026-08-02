local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "graphene",
  subgroup = "intermediate-product",
  order = "bb[carbon]-a[graphene]",
  stack_size = 200,
  weight = 2 * kg,

  inventory_move_sound = item_sounds.plastic_inventory_move,
  pick_sound = item_sounds.plastic_inventory_pickup,
  drop_sound = item_sounds.plastic_inventory_move,
} :set_icons {{icon = "__khaoscarbon__/graphics/icons/graphene.png", icon_size = 64}}
  :commit()
