local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

if settings.startup["khaoscarbon-rough-diamond"].value then
  khaoslib_item:load {
    type = "item",
    name = "rough-diamond",
    localised_name = {"entity-name.rough-diamond"},
    subgroup = "raw-resource",
    order = "cb[rough-diamond]",
    stack_size = 50,

    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,

    pictures = {
      {filename = "__khaoscarbon__/graphics/icons/rough-diamond.png", size = 64, scale = 0.5},
      {filename = "__khaoscarbon__/graphics/icons/rough-diamond-1.png", size = 64, scale = 0.5},
      {filename = "__khaoscarbon__/graphics/icons/rough-diamond-2.png", size = 64, scale = 0.5},
      {filename = "__khaoscarbon__/graphics/icons/rough-diamond-3.png", size = 64, scale = 0.5},
      {filename = "__khaoscarbon__/graphics/icons/rough-diamond-4.png", size = 64, scale = 0.5},
    },
  } :set_icons {{icon = "__khaoscarbon__/graphics/icons/rough-diamond.png", icon_size = 64}}
    :commit()
end
