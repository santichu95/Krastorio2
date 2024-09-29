data:extend({
  -----------------------------------------------------------------------------------------------------------------
  -----------------------------------------------------------------------------------------------------------------
  -----------------------------------------------------------------------------------------------------------------
  -- K2
  -- -- --
  -- Electric mining drills
  -- -- --
  -- -- --
  -- Research servers
  -- -- --
  -- -- --
  -- -- --
  -- NEW LABORATORIES
  -- -- --
  {
    type = "item",
    name = "biusart-lab",
    icon = "__Krastorio2Assets__/icons/entities/biusart-lab.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "g[lab]-g2[advanced-lab]",
    place_result = "biusart-lab",
    stack_size = 50,
  },
  {
    type = "item",
    name = "kr-singularity-lab",
    icon = "__Krastorio2Assets__/icons/entities/singularity-lab.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "g[lab]-g3[kr-singularity-lab]",
    place_result = "kr-singularity-lab",
    stack_size = 25,
  },
  -- -- --
  -- FLUID STORAGES
  -- -- --
  {
    type = "item",
    name = "kr-fluid-storage-1",
    icon = "__Krastorio2Assets__/icons/entities/fluid-storages/fluid-storage-1.png",
    stack_size = 50,
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "storage",
    order = "b[fluid]-bb2[storage-tank-2]",
    place_result = "kr-fluid-storage-1",
  },
  {
    type = "item",
    name = "kr-fluid-storage-2",
    icon = "__Krastorio2Assets__/icons/entities/fluid-storages/fluid-storage-2.png",
    stack_size = 50,
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "storage",
    order = "b[fluid]-c[storage-tank-3]",
    place_result = "kr-fluid-storage-2",
  },
  -- -- --
  -- STEEL PIPES
  -- -- --
  -- -- --
  -- -- --
  -- Turrets
  -- -- --
  {
    type = "item",
    name = "kr-railgun-turret",
    icon = "__Krastorio2Assets__/icons/entities/railgun-turret.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "railgun-turret",
    order = "a01[railgun-turret]",
    place_result = "kr-railgun-turret",
    stack_size = 50,
  },
  {
    type = "item",
    name = "kr-rocket-turret",
    icon = "__Krastorio2Assets__/icons/entities/rocket-turret.png",
    icon_size = 64,
    subgroup = "rocket-turret",
    order = "a02[rocket-turret]",
    place_result = "kr-rocket-turret",
    stack_size = 50,
  },
  {
    type = "item",
    name = "kr-laser-artillery-turret",
    icon = "__Krastorio2Assets__/icons/entities/laser-artillery-turret.png",
    icon_size = 64,
    subgroup = "vanilla-turrets",
    order = "b[turret]-e[artillery-turret]-a[laser-artillery-turret]",
    place_result = "kr-laser-artillery-turret",
    stack_size = 50,
  },
  -- -- --
  -- -- --
  -- Belts
  -- -- --
  -- Advanced
  {
    type = "item",
    name = "kr-advanced-splitter",
    localised_description = { "entity-description.splitter" },
    icon = "__Krastorio2Assets__/icons/entities/transport-belts/advanced-transport-belt/advanced-splitter.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "belt",
    order = "c[splitter]-d[advanced-splitter]",
    place_result = "kr-advanced-splitter",
    stack_size = 50,
  },
  {
    type = "item",
    name = "kr-advanced-transport-belt",
    icon = "__Krastorio2Assets__/icons/entities/transport-belts/advanced-transport-belt/advanced-transport-belt.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "belt",
    order = "a[transport-belt]-d[advanced-transport-belt]",
    place_result = "kr-advanced-transport-belt",
    stack_size = 100,
  },
  {
    type = "item",
    name = "kr-advanced-underground-belt",
    icon = "__Krastorio2Assets__/icons/entities/transport-belts/advanced-transport-belt/advanced-underground-belt.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "belt",
    order = "b[underground-belt]-d[advanced-underground-belt]",
    place_result = "kr-advanced-underground-belt",
    stack_size = 50,
  },
  -- Superior
  {
    type = "item",
    name = "kr-superior-splitter",
    localised_description = { "entity-description.splitter" },
    icon = "__Krastorio2Assets__/icons/entities/transport-belts/superior-transport-belt/superior-splitter.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "belt",
    order = "c[splitter]-e[superior-splitter]",
    place_result = "kr-superior-splitter",
    stack_size = 50,
  },
  {
    type = "item",
    name = "kr-superior-transport-belt",
    icon = "__Krastorio2Assets__/icons/entities/transport-belts/superior-transport-belt/superior-transport-belt.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "belt",
    order = "a[transport-belt]-e[superior-transport-belt]",
    place_result = "kr-superior-transport-belt",
    stack_size = 100,
  },
  {
    type = "item",
    name = "kr-superior-underground-belt",
    icon = "__Krastorio2Assets__/icons/entities/transport-belts/superior-transport-belt/superior-underground-belt.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "belt",
    order = "b[underground-belt]-e[superior-underground-belt]",
    place_result = "kr-superior-underground-belt",
    stack_size = 50,
  },
  -- -- --
  -- Roboports
  -- -- --
  {
    type = "item",
    name = "kr-small-roboport",
    icon = "__Krastorio2Assets__/icons/entities/small-roboport.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "logistic-network",
    order = "c[signal]-b[small-roboport]",
    place_result = "kr-small-roboport",
    stack_size = 50,
  },
  {
    type = "item",
    name = "kr-large-roboport",
    icon = "__Krastorio2Assets__/icons/entities/large-roboport.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "logistic-network",
    order = "c[signal]-c[large-roboport]",
    place_result = "kr-large-roboport",
    stack_size = 50,
  },
  -- -- --
  -- -- --
  -- -- --
  -- Superior inserters
  -- -- --
  -- -- --
  -----------------------------------------------------------------------------------------------------------------
  -----------------------------------------------------------------------------------------------------------------
  -----------------------------------------------------------------------------------------------------------------
})

if krastorio.general.getSafeSettingValue("kr-containers") then
  data:extend({
    -- -- --
    -- MEDIUM CONTEINERS
    -- -- --
    {
      type = "item",
      name = "kr-medium-active-provider-container",
      icon = "__Krastorio2Assets__/icons/entities/containers/medium-containers/medium-active-provider-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "kr-logistics-2",
      order = "a[medium-active-provider-container]",
      place_result = "kr-medium-active-provider-container",
    },
    {
      type = "item",
      name = "kr-medium-buffer-container",
      icon = "__Krastorio2Assets__/icons/entities/containers/medium-containers/medium-buffer-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "kr-logistics-2",
      order = "b[medium-buffer-container]",
      place_result = "kr-medium-buffer-container",
    },
    {
      type = "item",
      name = "kr-medium-container",
      icon = "__Krastorio2Assets__/icons/entities/containers/medium-containers/medium-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "storage",
      order = "a[items]-d[medium-container]",
      place_result = "kr-medium-container",
    },
    {
      type = "item",
      name = "kr-medium-passive-provider-container",
      icon = "__Krastorio2Assets__/icons/entities/containers/medium-containers/medium-passive-provider-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "kr-logistics-2",
      order = "c[medium-passive-provider-container]",
      place_result = "kr-medium-passive-provider-container",
    },
    {
      type = "item",
      name = "kr-medium-requester-container",
      icon = "__Krastorio2Assets__/icons/entities/containers/medium-containers/medium-requester-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "kr-logistics-2",
      order = "d[medium-requester-container]",
      place_result = "kr-medium-requester-container",
    },
    {
      type = "item",
      name = "kr-medium-storage-container",
      icon = "__Krastorio2Assets__/icons/entities/containers/medium-containers/medium-storage-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "kr-logistics-2",
      order = "e[medium-storage-container]",
      place_result = "kr-medium-storage-container",
    },
    -- -- --
    -- BIG CONTEINERS
    -- -- --
    {
      type = "item",
      name = "kr-big-active-provider-container",
      icon = "__Krastorio2Assets__/icons/entities/containers/big-containers/big-active-provider-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "kr-logistics-3",
      order = "a[big-active-provider-container]",
      place_result = "kr-big-active-provider-container",
    },
    {
      type = "item",
      name = "kr-big-buffer-container",
      icon = "__Krastorio2Assets__/icons/entities/containers/big-containers/big-buffer-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "kr-logistics-3",
      order = "b[big-buffer-container]",
      place_result = "kr-big-buffer-container",
    },
    {
      type = "item",
      name = "kr-big-container",
      icon = "__Krastorio2Assets__/icons/entities/containers/big-containers/big-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "storage",
      order = "a[items]-dz[big-container]",
      place_result = "kr-big-container",
    },
    {
      type = "item",
      name = "kr-big-passive-provider-container",
      icon = "__Krastorio2Assets__/icons/entities/containers/big-containers/big-passive-provider-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "kr-logistics-3",
      order = "c[big-passive-provider-container]",
      place_result = "kr-big-passive-provider-container",
    },
    {
      type = "item",
      name = "kr-big-requester-container",
      icon = "__Krastorio2Assets__/icons/entities/containers/big-containers/big-requester-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "kr-logistics-3",
      order = "d[big-requester-container]",
      place_result = "kr-big-requester-container",
    },
    {
      type = "item",
      name = "kr-big-storage-container",
      icon = "__Krastorio2Assets__/icons/entities/containers/big-containers/big-storage-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "kr-logistics-3",
      order = "e[big-storage-container]",
      place_result = "kr-big-storage-container",
    },
  })
end
