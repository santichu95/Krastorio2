local flare_stack_util = require("prototypes.libraries.flare-stack")

for fluid_name in pairs(data.raw.fluid) do
  flare_stack_util.generate_recipe(fluid_name)
end
