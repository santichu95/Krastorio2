local data_util = require("data-util")

local flare_stack_util = {}

--- Fluids in this blacklist will not be burnable in the flare stack.
--- @type table<data.FluidID, boolean>
flare_stack_util.blacklist = {
  ["matter"] = true,
}

--- Specifies byproducts that are to be created when burning the given fluid.
--- @type table<data.FluidID, data.ProductPrototype[]>
flare_stack_util.byproducts = {
  ["dirty-water"] = { { type = "item", name = "stone", amount = 1, probability = 0.30 } },
}

--- Specifies a custom emissions multiplier for the given fluid.
--- @type table<data.FluidID, double>
flare_stack_util.fluid_emissions_multiplier = {
  ["ammonia"] = 4.0,
  ["chlorine"] = 2.0,
  ["crude-oil"] = 9.0,
  ["dirty-water"] = 6.0,
  ["heavy-oil"] = 4.0,
  ["hydrogen"] = 0.0,
  ["hydrogen-chloride"] = 2.0,
  ["light-oil"] = 3.0,
  ["lubricant"] = 4.0,
  ["nitrogen"] = 0.0,
  ["oxygen"] = 0.0,
  ["petroleum-gas"] = 2.0,
  ["steam"] = 0.0,
  ["water"] = 0.0,
}

--- @param color data.Color
--- @param alpha double
local function with_alpha(color, alpha)
  local color = table.deepcopy(color)
  color.a = alpha
  return color
end

--- Generates a burning recipe for the given fluid.
--- @param fluid_name data.FluidID
function flare_stack_util.generate_recipe(fluid_name)
  local fluid = data.raw.fluid[fluid_name]
  if not fluid then
    error("Fluid " .. fluid_name .. " does not exist.")
  end
  if flare_stack_util.blacklist[fluid_name] or data.raw.fluid[fluid_name].hidden then
    return
  end
  if data.raw.recipe["kr-burn-" .. fluid_name] then
    error("Flare stack recipe for " .. fluid_name .. " already exists.")
  end

  local recipe = {
    type = "recipe",
    name = "kr-burn-" .. fluid_name,
    localised_name = { "recipe-name.kr-burn", fluid.localised_name or { "fluid-name." .. fluid_name } },
    localised_description = {
      "recipe-description.kr-burn",
      fluid.localised_name or { "fluid-name." .. fluid_name },
    },
    icons = {
      { icon = "__Krastorio2Assets__/icons/burn-recipes-background/burn-recipe-corner.png" },
      {
        icon = "__Krastorio2Assets__/icons/burn-recipes-background/burn-recipe-corner-mask.png",
        tint = with_alpha(fluid.base_color, 0.9),
      },
    },
    subgroup = "kr-void",
    order = fluid.order,
    hide_from_player_crafting = true,
    enabled = false,
    category = "fuel-burning",
    energy_required = 2,
    ingredients = {
      { type = "fluid", name = fluid_name, amount = 100 },
    },
    always_show_products = false,
    show_amount_in_title = false,
    crafting_machine_tint = {
      primary = fluid.base_color,
      secondary = with_alpha(fluid.base_color, 0.35),
      tertiary = with_alpha(fluid.flow_color, 0.5),
      quaternary = with_alpha(fluid.flow_color, 0.75),
    },
  }

  -- TODO: Propagate scale etc. into new scale factor. Scale is 0.39
  if fluid.icons then
    for _, layer in pairs(fluid.icons) do
      recipe.icons[#recipe.icons + 1] = layer
    end
  elseif fluid.icon then
    recipe.icons[#recipe.icons + 1] = { icon = fluid.icon, icon_size = fluid.icon_size }
  end

  local byproducts = flare_stack_util.byproducts[fluid_name]
  if byproducts then
    recipe.results = byproducts
    recipe.always_show_products = true
    -- TODO: Do we really need this?
    recipe.localised_description = {
      "recipe-description.kr-burn-with-residue",
      { "fluid-name." .. fluid_name },
      { "item-name." .. byproducts[1].name },
    }
  end

  local fluid_emissions_multiplier = flare_stack_util.fluid_emissions_multiplier[fluid_name]
  if fluid_emissions_multiplier then
    recipe.emissions_multiplier = fluid_emissions_multiplier
  end

  data:extend({ recipe })
  data_util.add_recipe_unlock("kr-fluid-excess-handling", recipe.name)
end

return flare_stack_util
