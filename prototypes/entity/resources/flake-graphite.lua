require("__base__.prototypes.factoriopedia-util");
local khaoslib_entity = require('__khaoslib__.prototypes.entity')
local resource_autoplace = require('__core__.lualib.resource-autoplace')

data.raw["planet"]["nauvis"].map_gen_settings = util.merge {data.raw["planet"]["nauvis"].map_gen_settings, {
  autoplace_controls = {
    ["flake-graphite"] = {},
  },
  autoplace_settings = {
    entity = {
      settings = {
        ["flake-graphite"] = {},
      },
    },
  },
}}

resource_autoplace.initialize_patch_set("flake-graphite", true)

data:extend {
  {
    type = "autoplace-control",
    name = "flake-graphite",
    localised_name = {"", "[entity=flake-graphite] ", {"entity-name.flake-graphite"}},
    category = "resource",
    order = "a-da",
    richness = true,
  },
}

khaoslib_entity:load {
  type = "resource",
  name = "flake-graphite",
  flags = {"placeable-neutral"},
  order = "a-b-b",

  map_color = {r = 0.18, g = 0.17, b = 0.30},
  collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
  selection_box = {{-0.5, -0.5}, {0.5, 0.5}},

  factoriopedia_simulation = {
    init = make_resource("flake-graphite"),
  },

  autoplace = resource_autoplace.resource_autoplace_settings{
    name = "flake-graphite",
    order = "b",
    base_density = 6,
    base_spots_per_km2 = 1,
    has_starting_area_placement = true,
    regular_rq_factor_multiplier = 1.2,
    starting_rq_factor_multiplier = 1.4,
  },

  stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
  stages = {
    sheet = {
      filename = "__khaoscarbon__/graphics/entity/flake-graphite/flake-graphite.png",
      priority = "extra-high",
      size = 128,
      frame_count = 8,
      variation_count = 8,
      scale = 0.5,
    },
  },
} :set_icons {{icon = "__khaoscarbon__/graphics/icons/flake-graphite.png", icon_size = 64}}
  :set_minable {
    hardness = 1,
    mining_time = 1,
    mining_particle = "flake-graphite-particle",
    required_fluid = "steam",
    fluid_amount = 1,
    result = "flake-graphite",
  }
  :commit()
