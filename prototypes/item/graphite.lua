local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "graphite",
  subgroup = "raw-material",
  order = "ab[crushing]-a[graphite]",
  stack_size = 100,
  weight = 1 * kg,

  inventory_move_sound = item_sounds.sulfur_inventory_move,
  pick_sound = item_sounds.resource_inventory_pickup,
  drop_sound = item_sounds.sulfur_inventory_move,

  pictures = {
    {filename = "__khaoscarbon__/graphics/icons/graphite.png", size = 64, scale = 0.5},
    {filename = "__khaoscarbon__/graphics/icons/graphite-1.png", size = 64, scale = 0.5},
    {filename = "__khaoscarbon__/graphics/icons/graphite-2.png", size = 64, scale = 0.5},
  },
} :set_icons {{icon = "__khaoscarbon__/graphics/icons/graphite.png", icon_size = 64}}
  :commit()
