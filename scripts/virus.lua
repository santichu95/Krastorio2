local flib_math = require("__flib__.math")

local biter_virus_evolution_multiplier = 0.67

local virus_iteration_counts = {
  [1000] = 20,
  [5000] = 40,
  [10000] = 80,
  [20000] = 160,
  [30000] = 280,
  [40000] = 300,
  [50000] = 400,
  [flib_math.max_int53] = 800,
}

--- Modifier to change the quantity of objects iterated for each round of the function, based on the total
--- @param count number
local function get_removal_count(count)
  for limit, per in pairs(virus_iteration_counts) do
    if count <= limit then
      return per
    end
  end
end

--- @param virus_data BiterVirusData
local function iterate_biter_virus(virus_data)
  local surface = virus_data.surface
  if not surface or not surface.valid then
    storage.virus.biter[surface.index] = nil
    return
  end

  local entities = virus_data.entities
  local entities_killed = virus_data.entities_killed
  local entities_to_kill = virus_data.entities_to_kill
  local force = virus_data.force
  local len = virus_data.entities_len

  -- Kill some entities
  for _ = 1, virus_data.amount_per_iteration do
    if entities_killed >= entities_to_kill then
      storage.virus.biter[surface.index] = nil
      break
    end

    local i = math.random(1, len)
    local entity = entities[i]
    if entity and entity.valid then
      entity.die(force)

      -- Move the element at the end to the gap
      -- This removes the element at `i` while achieving O(1) performance
      entities[i] = entities[len]
      entities[len] = nil

      entities_killed = entities_killed + 1
      len = len - 1
    end
  end

  virus_data.entities_killed = entities_killed
  virus_data.tiles_len = len
end

--- @param player LuaPlayer
--- @param surface LuaSurface
local function init_biter_virus(player, surface)
  local biter_viruses = storage.virus.biter
  if not biter_viruses[surface.index] then
    -- Reduce evolution factor
    local enemy = game.forces.enemy
    enemy.evolution_factor = enemy.evolution_factor * biter_virus_evolution_multiplier

    -- Begin gradual enemy killoff
    local enemy_entities = surface.find_entities_filtered({ force = "enemy" })
    local len = #enemy_entities
    if len > 0 then
      --- @class BiterVirusData
      biter_viruses[surface.index] = {
        amount_per_iteration = math.ceil(len / get_removal_count(len)),
        entities = enemy_entities,
        entities_killed = 0,
        entities_len = len,
        entities_to_kill = len / 2.5,
        force = player.force,
        surface = surface,
      }
    end
  end
end

--- @param e EventData.on_player_used_capsule
local function on_player_used_capsule(e)
  local item = e.item
  if not item or not item.valid then
    return
  end

  local player = game.get_player(e.player_index) --[[@as LuaPlayer]]
  local surface = player.surface

  if item.name == "kr-biter-virus" then
    init_biter_virus(player, surface)
  end
end

local function on_tick()
  for _, biter_virus in pairs(storage.virus.biter) do
    iterate_biter_virus(biter_virus)
  end
end

local virus = {}

function virus.on_init()
  storage.virus = {
    --- @type table<uint, BiterVirusData>
    biter = {},
  }
end

virus.events = {
  [defines.events.on_player_used_capsule] = on_player_used_capsule,
  [defines.events.on_tick] = on_tick,
}

return virus
