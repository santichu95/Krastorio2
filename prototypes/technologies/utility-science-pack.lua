data:extend({
  {
    type = "technology",
    name = "kr-advanced-additional-engine-equipment",
    icons = util.technology_icon_constant_equipment(
      "__Krastorio2Assets__/technologies/advanced-additional-engine-equipment.png"
    ),
    icon_size = 256,
    upgrade = false,
    unit = {
      time = 30,
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = { "utility-science-pack" },
    effects = {
      { type = "unlock-recipe", recipe = "advanced-additional-engine-equipment" },
    },
  },
  {
    type = "technology",
    name = "kr-advanced-exoskeleton-equipment",
    icons = util.technology_icon_constant_equipment(
      "__Krastorio2Assets__/technologies/advanced-exoskeleton-equipment.png"
    ),
    icon_size = 256,
    upgrade = false,
    unit = {
      time = 30,
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = { "exoskeleton-equipment", "speed-module-2" },
    effects = {
      { type = "unlock-recipe", recipe = "advanced-exoskeleton-equipment" },
    },
  },
  {
    type = "technology",
    name = "kr-ai-core",
    icon = "__Krastorio2Assets__/technologies/ai-core.png",
    icon_size = 256,
    unit = {
      time = 60,
      count = 500,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = { "kr-quarry-minerals-extraction" },
    effects = {
      { type = "unlock-recipe", recipe = "ai-core" },
    },
  },
  {
    type = "technology",
    name = "kr-advanced-radar",
    icon = "__Krastorio2Assets__/technologies/advanced-radar.png",
    icon_size = 256,
    unit = {
      time = 60,
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = { "kr-radar", "advanced-circuit" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-advanced-radar" },
    },
  },
  {
    type = "technology",
    name = "kr-energy-shield-mk3-equipment",
    icons = util.technology_icon_constant_equipment(
      "__Krastorio2Assets__/technologies/energy-shield-mk3-equipment.png"
    ),
    icon_size = 256,
    upgrade = false,
    unit = {
      time = 60,
      count = 350,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = { "energy-shield-mk2-equipment", "kr-lithium-sulfur-battery" },
    effects = {
      { type = "unlock-recipe", recipe = "energy-shield-mk3-equipment" },
    },
  },
  {
    type = "technology",
    name = "kr-fusion-energy",
    icon = "__Krastorio2Assets__/technologies/fusion-energy.png",
    icon_size = 256,
    unit = {
      time = 60,
      count = 1500,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = { "kovarex-enrichment-process", "kr-lithium-processing", "nuclear-power", "utility-science-pack" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-fusion-reactor" },
      { type = "unlock-recipe", recipe = "kr-advanced-steam-turbine" },
      { type = "unlock-recipe", recipe = "heavy-water" },
      { type = "unlock-recipe", recipe = "tritium" },
      { type = "unlock-recipe", recipe = "empty-dt-fuel" },
      { type = "unlock-recipe", recipe = "dt-fuel" },
    },
  },
  {
    type = "technology",
    name = "kr-logistic-4",
    localised_description = { "technology-description.logistics" },
    icon = "__Krastorio2Assets__/technologies/logistics-4.png",
    icon_size = 256,
    unit = {
      time = 30,
      count = 500,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = { "logistics-3" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-advanced-splitter" },
      { type = "unlock-recipe", recipe = "kr-advanced-transport-belt" },
      { type = "unlock-recipe", recipe = "kr-advanced-underground-belt" },
    },
  },
  {
    type = "technology",
    name = "kr-matter-tech-card",
    icon = "__Krastorio2Assets__/technologies/matter-tech-card.png",
    icon_size = 256,
    unit = {
      time = 60,
      count = 750,
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = { "kr-singularity-lab" },
    effects = {
      { type = "unlock-recipe", recipe = "matter-research-data" },
      { type = "unlock-recipe", recipe = "matter-tech-card" },
    },
  },
  {
    type = "technology",
    name = "kr-military-5",
    localised_description = { "technology-description.military" },
    icon = "__Krastorio2Assets__/technologies/military-5.png",
    icon_size = 256,
    order = "g-d-d",
    unit = {
      time = 45,
      count = 500,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = {
      "military-4",
      "kr-lithium-sulfur-battery",
      "kr-quarry-minerals-extraction",
      "personal-laser-defense-equipment",
    },
    effects = {
      { type = "unlock-recipe", recipe = "impulse-rifle" },
      { type = "unlock-recipe", recipe = "impulse-rifle-ammo" },
      { type = "unlock-recipe", recipe = "imersite-rounds-magazine" },
      { type = "unlock-recipe", recipe = "heavy-rocket-launcher" },
      { type = "unlock-recipe", recipe = "heavy-rocket" },
    },
  },
  {
    type = "technology",
    name = "kr-personal-laser-defense-mk2-equipment",
    icons = util.technology_icon_constant_equipment(
      "__Krastorio2Assets__/technologies/personal-laser-defense-mk2-equipments.png"
    ),
    icon_size = 256,
    order = "g-m",
    unit = {
      count = 350,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 60,
    },
    prerequisites = { "personal-laser-defense-equipment", "power-armor-mk2" },
    effects = {
      {
        recipe = "personal-submachine-laser-defense-mk2-equipment",
        type = "unlock-recipe",
      },
      { type = "unlock-recipe", recipe = "personal-laser-defense-mk2-equipment" },
    },
  },
  {
    type = "technology",
    name = "kr-quantum-computer",
    icon = "__Krastorio2Assets__/technologies/quantum-computer.png",
    icon_size = 256,
    unit = {
      time = 60,
      count = 750,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = { "kr-ai-core" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-quantum-computer" },
    },
  },
  {
    type = "technology",
    name = "kr-railgun-turret",
    icon = "__Krastorio2Assets__/technologies/railgun-turret.png",
    icon_size = 256,
    prerequisites = { "military-4" },
    unit = {
      time = 60,
      count = 500,
      ingredients = {
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    order = "g-f-z",
    effects = {
      { type = "unlock-recipe", recipe = "kr-railgun-turret" },
      { type = "unlock-recipe", recipe = "basic-railgun-shell" },
      { type = "unlock-recipe", recipe = "explosion-railgun-shell" },
    },
  },
  {
    type = "technology",
    name = "kr-singularity-lab",
    icon = "__Krastorio2Assets__/technologies/singularity-lab.png",
    icon_size = 256,
    unit = {
      time = 60,
      count = 750,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = { "kr-quantum-computer", "rocket-silo" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-singularity-lab" },
    },
  },
  {
    type = "technology",
    name = "kr-superior-night-vision-equipment",
    icons = util.technology_icon_constant_equipment(
      "__Krastorio2Assets__/technologies/superior-night-vision-equipment.png"
    ),
    icon_size = 256,
    upgrade = false,
    unit = {
      time = 30,
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = { "night-vision-equipment", "kr-quarry-minerals-extraction" },
    effects = {
      { type = "unlock-recipe", recipe = "superior-night-vision-equipment" },
    },
  },
  {
    type = "technology",
    name = "kr-superior-solar-panel-equipment",
    icons = util.technology_icon_constant_equipment(
      "__Krastorio2Assets__/technologies/superior-solar-panel-equipment.png"
    ),
    icon_size = 256,
    upgrade = false,
    unit = {
      time = 30,
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    prerequisites = { "kr-quarry-minerals-extraction", "solar-panel-equipment" },
    effects = {
      { type = "unlock-recipe", recipe = "superior-solar-panel-equipment" },
      { type = "unlock-recipe", recipe = "big-superior-solar-panel-equipment" },
    },
  },
})
