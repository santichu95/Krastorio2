if not kr_adjust_stack_sizes then
  return
end

local kr_stack_size_value = 200

-- Vanilla

data.raw.ammo["artillery-shell"].stack_size = 25
data.raw.capsule["cliff-explosives"].stack_size = kr_stack_size_value
data.raw.capsule["raw-fish"].stack_size = 50
data.raw.item["barrel"].stack_size = 10
data.raw.item["battery"].stack_size = kr_stack_size_value
data.raw.item["coal"].stack_size = kr_stack_size_value
data.raw.item["concrete"].stack_size = kr_stack_size_value
data.raw.item["concrete"].stack_size = kr_stack_size_value
data.raw.item["copper-ore"].stack_size = kr_stack_size_value
data.raw.item["copper-plate"].stack_size = kr_stack_size_value
data.raw.item["depleted-uranium-fuel-cell"].stack_size = 10
data.raw.item["hazard-concrete"].stack_size = kr_stack_size_value
data.raw.item["iron-gear-wheel"].stack_size = kr_stack_size_value
data.raw.item["iron-ore"].stack_size = kr_stack_size_value
data.raw.item["iron-plate"].stack_size = kr_stack_size_value
data.raw.item["iron-stick"].stack_size = kr_stack_size_value
data.raw.item["landfill"].stack_size = kr_stack_size_value
data.raw.item["low-density-structure"].stack_size = kr_stack_size_value * 0.5
data.raw.item["nuclear-fuel"].stack_size = 10
data.raw.item["plastic-bar"].stack_size = kr_stack_size_value
data.raw.item["processing-unit"].stack_size = kr_stack_size_value
data.raw.item["refined-concrete"].stack_size = kr_stack_size_value
data.raw.item["refined-hazard-concrete"].stack_size = kr_stack_size_value
data.raw.item["rocket-fuel"].stack_size = kr_stack_size_value * 0.5
data.raw.item["steel-plate"].stack_size = kr_stack_size_value
data.raw.item["stone-brick"].stack_size = kr_stack_size_value
data.raw.item["stone-brick"].stack_size = kr_stack_size_value
data.raw.item["stone"].stack_size = kr_stack_size_value
data.raw.item["stone-wall"].stack_size = kr_stack_size_value
data.raw.item["sulfur"].stack_size = kr_stack_size_value
data.raw.item["uranium-235"].stack_size = kr_stack_size_value
data.raw.item["uranium-238"].stack_size = kr_stack_size_value
data.raw.item["uranium-fuel-cell"].stack_size = 10
data.raw.item["uranium-ore"].stack_size = kr_stack_size_value
data.raw.item["wood"].stack_size = kr_stack_size_value
data.raw.tool[kr_optimization_tech_card_name].stack_size = 200

-- K2

data.raw.item["advanced-fuel"].stack_size = kr_stack_size_value
data.raw.item["ai-core"].stack_size = kr_stack_size_value
data.raw.item["automation-core"].stack_size = kr_stack_size_value
data.raw.item["bio-fuel"].stack_size = kr_stack_size_value
data.raw.item["biomass"].stack_size = kr_stack_size_value
data.raw.item["biters-research-data"].stack_size = 200
data.raw.item["blank-tech-card"].stack_size = 200
data.raw.item["charged-matter-stabilizer"].stack_size = kr_stack_size_value * 0.5
data.raw.item["coke"].stack_size = kr_stack_size_value
data.raw.item["electronic-components"].stack_size = kr_stack_size_value
data.raw.item["energy-control-unit"].stack_size = kr_stack_size_value * 0.5
data.raw.item["enriched-copper"].stack_size = kr_stack_size_value
data.raw.item["enriched-iron"].stack_size = kr_stack_size_value
data.raw.item["fertilizer"].stack_size = kr_stack_size_value
data.raw.item["fuel"].stack_size = kr_stack_size_value
data.raw.item["glass"].stack_size = kr_stack_size_value
data.raw.item["imersite-crystal"].stack_size = kr_stack_size_value * 0.5
data.raw.item["imersite-powder"].stack_size = kr_stack_size_value
data.raw.item["imersium-beam"].stack_size = kr_stack_size_value
data.raw.item["imersium-gear-wheel"].stack_size = kr_stack_size_value
data.raw.item["imersium-plate"].stack_size = kr_stack_size_value
data.raw.item["inserter-parts"].stack_size = kr_stack_size_value
data.raw.item["iron-beam"].stack_size = kr_stack_size_value
data.raw.item["kr-black-reinforced-plate"].stack_size = kr_stack_size_value
data.raw.item["kr-white-reinforced-plate"].stack_size = kr_stack_size_value
data.raw.item["lithium-chloride"].stack_size = kr_stack_size_value
data.raw.item["lithium"].stack_size = kr_stack_size_value
data.raw.item["lithium-sulfur-battery"].stack_size = kr_stack_size_value
data.raw.item["matter-cube"].stack_size = kr_stack_size_value
data.raw.item["matter-research-data"].stack_size = 200
data.raw.item["matter-stabilizer"].stack_size = kr_stack_size_value * 0.5
data.raw.item["pollution-filter"].stack_size = kr_stack_size_value * 0.5
data.raw.item["quartz"].stack_size = kr_stack_size_value
data.raw.item["rare-metals"].stack_size = kr_stack_size_value
data.raw.item["raw-imersite"].stack_size = kr_stack_size_value
data.raw.item["raw-rare-metals"].stack_size = kr_stack_size_value
data.raw.item["sand"].stack_size = kr_stack_size_value
data.raw.item["silicon"].stack_size = kr_stack_size_value
data.raw.item["space-research-data"].stack_size = 1000
data.raw.item["steel-beam"].stack_size = kr_stack_size_value
data.raw.item["steel-gear-wheel"].stack_size = kr_stack_size_value
data.raw.item["tritium"].stack_size = kr_stack_size_value
data.raw.item["used-pollution-filter"].stack_size = kr_stack_size_value * 0.5
data.raw.tool["advanced-tech-card"].stack_size = 200
data.raw.tool["basic-tech-card"].stack_size = 200
data.raw.tool["matter-tech-card"].stack_size = 200
data.raw.tool["singularity-tech-card"].stack_size = 200
