local singularity_generator = {}

--- @class SGData
--- @field assembler LuaEntity
--- @field generator LuaEntity

function singularity_generator.init()
  global.singularity_generator = {
    --- @type table<number, SGData>
    assembler = {},
    --- @type table<number, SGData>
    generator = {},
  }
end

--- @param entity LuaEntity
function singularity_generator.build(entity)
  local data = {}

  if entity.name == "kr-singularity-assembler" then
    data.assembler = entity
    data.generator = entity.surface.create_entity({
      name = "kr-singularity-generator",
      position = entity.position,
      direction = entity.direction,
      force = entity.force,
      player = entity.last_user,
      create_build_effect_smoke = false,
    })
  elseif entity.name == "kr-singularity-generator" then
    data.assembler = entity.surface.create_entity({
      name = "kr-singularity-assembler",
      position = entity.position,
      direction = entity.direction,
      force = entity.force,
      player = entity.last_user,
      create_build_effect_smoke = false,
    })
    data.generator = entity
  end

  if data.assembler and data.assembler.valid and data.generator and data.generator.valid then
    global.singularity_generator.assembler[data.assembler.unit_number] = data
    global.singularity_generator.generator[data.generator.unit_number] = data
    -- TODO: Print error
  end
end

--- @param entity LuaEntity
function singularity_generator.destroy(entity)
  --- @type SGData?
  local data
  local unit_number = entity.unit_number
  if entity.name == "kr-singularity-assembler" then
    data = global.singularity_generator.assembler[unit_number]
  elseif entity.name == "kr-singularity-generator" then
    data = global.singularity_generator.generator[unit_number]
  end

  if data then
    --- @type LuaEntity
    for _, entity in pairs(data) do
      if entity.valid then
        entity.destroy(--[[{ raise_destroy = true }]]
        )
      end
    end
  end
end

return singularity_generator
