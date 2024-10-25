local data_util = {}

--- Adds the given recipe as an unlock of the given technology.
--- @param technology_name data.TechnologyID
--- @param recipe_name data.RecipeID
function data_util.add_recipe_unlock(technology_name, recipe_name)
  local technology = data.raw.technology[technology_name]
  if not technology then
    error("Technology " .. technology_name .. " does not exist.")
  end
  for _, effect in pairs(technology.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == recipe_name then
      error("Technology " .. technology_name .. " already unlocks recipe " .. recipe_name .. ".")
    end
  end
  table.insert(technology.effects, { type = "unlock-recipe", recipe = recipe_name })
end

--- Converts a furnace prototype into an assembling machine prototype.
--- @param furnace_name data.EntityID
--- @return data.AssemblingMachinePrototype
function data_util.furnace_to_assembler(furnace_name)
  local furnace = data.raw.furnace[furnace_name]
  if not furnace then
    error("Furnace " .. furnace_name .. " does not exist.")
  end

  local assembler = table.deepcopy(furnace) --[[@as data.AssemblingMachinePrototype]]
  assembler.type = "assembling-machine"
  assembler.source_inventory_size = nil --- @diagnostic disable-line
  assembler.energy_source.emissions_per_minute = { pollution = 2 }
  assembler.energy_usage = "0.2MW"
  data.raw.furnace[furnace_name] = nil
  data:extend({ assembler })
  return assembler
end

return data_util
