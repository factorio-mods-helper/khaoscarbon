require("__base__.prototypes.factoriopedia-util");
local khaoslib_entity = require('__khaoslib__.prototypes.entity')
local resource_autoplace = require('__core__.lualib.resource-autoplace')

if settings.startup["khaoscarbon-rough-diamond"].value then
  data.raw["planet"]["nauvis"].map_gen_settings = util.merge {data.raw["planet"]["nauvis"].map_gen_settings, {
    autoplace_controls = {
      ["rough-diamond"] = {},
    },
    autoplace_settings = {
      entity = {
        settings = {
          ["rough-diamond"] = {},
        },
      },
    },
  }}

  resource_autoplace.initialize_patch_set("rough-diamond", true)

  data:extend {
    {
      type = "autoplace-control",
      name = "rough-diamond",
      localised_name = {"", "[entity=rough-diamond] ", {"entity-name.rough-diamond"}},
      category = "resource",
      order = "a-db",
      richness = true,
    },
  }

  khaoslib_entity:load {
    type = "resource",
    name = "rough-diamond",
    flags = {"placeable-neutral"},
    order = "a-b-b",

    map_color = {r = 0.3, g = 0.54, b = 0.92},
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},

    factoriopedia_simulation = {
      init = make_resource("rough-diamond"),
    },

    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "rough-diamond",
      order = "b",
      base_density = 0.5,
      base_spots_per_km2 = 0.5,
      regular_rq_factor_multiplier = 0.6,
    },

    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
    stages = {
      sheet = {
        filename = "__khaoscarbon__/graphics/entity/rough-diamond/rough-diamond.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5,
      },
    },
  } :set_icons {{icon = "__khaoscarbon__/graphics/icons/rough-diamond.png", icon_size = 64}}
    :set_minable {
      hardness = 1,
      mining_time = 15,
      mining_particle = "rough-diamond-particle",
      result = "rough-diamond",
    }
    :commit()
end
