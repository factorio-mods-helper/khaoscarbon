local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "flake-graphite",
  localised_name = {"entity-name.flake-graphite"},
  subgroup = "raw-resource",
  order = "ca[flake-graphite]",
  stack_size = 50,

  inventory_move_sound = item_sounds.resource_inventory_move,
  pick_sound = item_sounds.resource_inventory_pickup,
  drop_sound = item_sounds.resource_inventory_move,

  pictures = {
    {filename = "__khaoscarbon__/graphics/icons/flake-graphite.png", size = 64, scale = 0.5},
    {filename = "__khaoscarbon__/graphics/icons/flake-graphite-1.png", size = 64, scale = 0.5},
    {filename = "__khaoscarbon__/graphics/icons/flake-graphite-2.png", size = 64, scale = 0.5},
    {filename = "__khaoscarbon__/graphics/icons/flake-graphite-3.png", size = 64, scale = 0.5},
    {filename = "__khaoscarbon__/graphics/icons/flake-graphite-4.png", size = 64, scale = 0.5},
  },
} :set_icons {{icon = "__khaoscarbon__/graphics/icons/flake-graphite.png", icon_size = 64}}
  :commit()
