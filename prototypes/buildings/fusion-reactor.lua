data:extend({
  {
    type = "recipe",
    name = "kr-fusion-reactor",
    energy_required = 200,
    enabled = false,
    ingredients = {
      { type = "item", name = "concrete", amount = 500 },
      { type = "item", name = "copper-plate", amount = 500 },
      { type = "item", name = "steel-plate", amount = 500 },
      { type = "item", name = "steel-beam", amount = 350 },
      { type = "item", name = "rare-metals", amount = 350 },
      { type = "item", name = "processing-unit", amount = 100 },
    },
    results = { { type = "item", name = "kr-fusion-reactor", amount = 1 } },
  },
  {
    type = "item",
    name = "kr-fusion-reactor",
    icon = "__Krastorio2Assets__/icons/entities/fusion-reactor.png",
    subgroup = "energy",
    order = "f[nuclear-energy]-b2[fusion-reactor]",
    place_result = "kr-fusion-reactor",
    stack_size = 1,
  },
  {
    type = "fusion-reactor",
    name = "kr-fusion-reactor",
    icon = "__Krastorio2Assets__/icons/entities/fusion-reactor.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { hardness = 1, mining_time = 3, result = "kr-fusion-reactor" },
    max_health = 7500,
    corpse = "kr-fusion-reactor-remnant",
    dying_explosion = "medium-explosion",
    resistances = {
      { type = "physical", percent = 60 },
      { type = "fire", percent = 95 },
      { type = "impact", percent = 95 },
    },
    collision_box = { { -7.25, -7.25 }, { 7.25, 7.25 } },
    selection_box = { { -7.5, -7.5 }, { 7.5, 7.5 } },
    input_fluid_box = {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_picture = require("prototypes.buildings.pipe-picture"),
        volume = 1000,
        filter = "water",
        pipe_connections = { { flow_direction = "input", direction = defines.direction.south, position = { 0, 7 } } },
    },
    output_fluid_box = {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_picture = e("prototypes.buildings.pipe-picture"),
        volume = 100000,
        filter = "steam",
        pipe_connections = { { flow_direction = "output", direction = defines.direction.north, position = { 0, -7 } } },
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 5 },
    },
    burner = {
      type = "burner",
      fuel_categories = {"fusion-fuel"},
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
    },
    power_input = "483.4MW",
    max_fluid_usage = 1000/300,
    open_sound = { filename = "__Krastorio2Assets__/sounds/buildings/open.ogg", volume = 1 },
    close_sound = { filename = "__Krastorio2Assets__/sounds/buildings/close.ogg", volume = 0.85 },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = {
        filename = "__Krastorio2Assets__/sounds/buildings/fusion-reactor.ogg",
        volume = 1.25,
        audible_distance_modifier = 10,
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg" },
    },
    graphics_set = {
      plasma_category = "fusion-reactor-steam",
      structure = {
          layers = {
            {
              filename = "__Krastorio2Assets__/buildings/fusion-reactor/fusion-reactor.png",
              width = 1100,
              height = 1100,
              scale = 0.5,
              shift = { 1.01, 0 },
            },
            {
              filename = "__Krastorio2Assets__/buildings/fusion-reactor/fusion-reactor-shadow.png",
              priority = "medium",
              width = 1100,
              height = 1100,
              shift = { 1.01, 0 },
              draw_as_shadow = true,
              scale = 0.5,
            },
          },
        }, 
      }, 
      working_visualisations = {
        {
          animation = {
            filename = "__Krastorio2Assets__/buildings/fusion-reactor/fusion-reactor-steam.png",
            priority = "extra-high",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.5,
            scale = 0.75,
            shift = { -4.25, -5.35 },
            blend_mode = "additive",
            flags = { "smoke" },
            fadeout = true,
          },
        },
        {
          animation = {
            filename = "__Krastorio2Assets__/buildings/fusion-reactor/fusion-reactor-steam.png",
            priority = "extra-high",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.5,
            scale = 0.5,
            shift = { -5.25, -1.35 },
            blend_mode = "additive",
            flags = { "smoke" },
            fadeout = true,
          },
        },
        {
          animation = {
            filename = "__Krastorio2Assets__/buildings/fusion-reactor/fusion-reactor-animation-glow.png",
            priority = "high",
            line_length = 6,
            width = 626,
            height = 688,
            frame_count = 12,
            animation_speed = 0.75,
            scale = 0.5,
            shift = { 2.18, -2.358 },
            draw_as_glow = true,
            blend_mode = "additive",
          },
        },
        {
          draw_as_light = true,
          animation = {
            filename = "__Krastorio2Assets__/buildings/fusion-reactor/fusion-reactor-animation-light.png",
            line_length = 6,
            width = 626,
            height = 688,
            frame_count = 12,
            animation_speed = 0.75,
            scale = 0.5,
            shift = { 2.18, -2.358 },
          },
        },
        {
          animation = {
            filename = "__Krastorio2Assets__/buildings/fusion-reactor/fusion-reactor-light.png",
            priority = "high",
            width = 1100,
            height = 1100,
            scale = 0.5,
            line_length = 1,
            frame_count = 1,
            repeat_count = 12,
            shift = { 1.01, 0 },
            draw_as_light = true,
            blend_mode = "additive-soft",
          },
        },
        {
          animation = {
            filename = "__Krastorio2Assets__/buildings/fusion-reactor/fusion-reactor-animation.png",
            line_length = 6,
            width = 626,
            height = 688,
            frame_count = 12,
            animation_speed = 0.75,
            scale = 0.5,
            shift = { 2.18, -2.358 },
          },
        },
        {
          light = {
            intensity = 0.25,
            size = 2,
            shift = { 0, 0 },
            color = { r = 0.95, g = 0.75, b = 0.5 },
          },
        },
      },
      water_reflection = {
        pictures = {
          filename = "__Krastorio2Assets__/buildings/fusion-reactor/fusion-reactor-reflection.png",
          priority = "extra-high",
          width = 110,
          height = 110,
          shift = util.by_pixel(0, 40),
          variation_count = 1,
          scale = 5,
        },
        rotate = false,
        orientation_to_variation = false,
      },
    },
})