data:extend({
  {
    type = "trivial-smoke",
    name = "kr-laser-explosion-gunshot-smoke-fast",
    hidden = true,
    animation = {
      filename = "__base__/graphics/entity/smoke-fast/smoke-fast.png",
      priority = "high",
      blend_mode = "additive-soft",
      width = 50,
      height = 50,
      frame_count = 16,
      animation_speed = 16 / 60,
      duration = 600,
      fade_in_duration = 0,
      fade_away_duration = 600,
      spread_duration = 600,
      start_scale = 0.20,
      end_scale = 1.0,
      tint = { r = 0.65, g = 0.0, b = 0.0, a = 0.9 },
    },
    duration = 60,
    fade_away_duration = 60,
  },
})
