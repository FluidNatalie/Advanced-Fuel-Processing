local VehicleFuel = {
    type = "fuel-category",
    name = "vehicle-fuel"
}

local SolidHeavyOil = {
    type = "item",
    name = "solid-heavy-oil",
    icon = "__AdvancedFuelProcessing__/graphics/Solid_heavy_oil.png",
    icon_size = 64, icon_mipmaps = 4,
    fuel_category = "vehicle-fuel",
    fuel_value = "20MJ",
    fuel_acceleration_multiplier = 2.00,
    fuel_top_speed_multiplier = 0.80,
    subgroup = "intermediate-product",
    stack_size = 50
}

local SolidHeavyOilRecipe = {
    type = "recipe",
    name = "solid-heavy-oil",
    energy_required = 4,
    enabled = false,
    category = "chemistry",
    ingredients = {{name = "solid-fuel", amount = 1}, {type = "fluid", name = "heavy-oil", amount = 8}},
    result = "solid-heavy-oil"
}

local SolidLightOil = {
    type = "item",
    name = "solid-light-oil",
    icon = "__AdvancedFuelProcessing__/graphics/Solid_light_oil.png",
    icon_size = 64, icon_mipmaps = 4,
    fuel_category = "vehicle-fuel",
    fuel_value = "6MJ",
    fuel_acceleration_multiplier = 1.60,
    fuel_top_speed_multiplier = 1.15,
    subgroup = "intermediate-product",
    stack_size = 100
}

local SolidLightOilRecipe = {
    type = "recipe",
    name = "solid-light-oil",
    energy_required = 16,
    enabled = false,
    category = "chemistry",
    ingredients = {{name = "solid-fuel", amount = 5}, {type = "fluid", name = "light-oil", amount = 25}},
    result = "solid-light-oil",
    result_count = 10
}

local SolidCoal = {
    type = "item",
    name = "solid-coal",
    icon = "__AdvancedFuelProcessing__/graphics/Solid_coal.png",
    icon_size = 64, icon_mipmaps = 4,
    fuel_category = "vehicle-fuel",
    fuel_value = "40MJ",
    fuel_acceleration_multiplier = 1.00,
    fuel_top_speed_multiplier = 1.30,
    subgroup = "intermediate-product",
    stack_size = 25
}

local SolidCoalRecipe = {
    type = "recipe",
    name = "solid-coal",
    energy_required = 8,
    enabled = false,
    category = "advanced-crafting",
    ingredients = {{name = "solid-fuel", amount = 2}, {name = "coal", amount = 4}},
    result = "solid-coal"
}

local llrRocketFuel = {
	type = "item",
    name = "llr-rocket-fuel",
    icon = "__base__/graphics/icons/rocket-fuel.png",
    icon_size = 64, icon_mipmaps = 4,
    fuel_category = "chemical",
    fuel_value = "100MJ",
    fuel_acceleration_multiplier = 1.80,
    fuel_top_speed_multiplier = 1.15,
    subgroup = "intermediate-product",
    order = "p[rocket-fuel]",
    stack_size = 10
}

local llrRocketFuelRecipe = {
    type = "recipe",
    name = "llr-rocket-fuel",
    energy_required = 20,
    enabled = false,
    category = "crafting-with-fluid",
    ingredients = {{type = "fluid", name = "ll-rocket-fuel", amount = 10}, {name = "steel-plate", amount = 1}},
    result = "llr-rocket-fuel"
}

local CoalExperimentationResearch = {
    type = "technology",
  name = "Coal-experimentation-research",
  icon = "__AdvancedFuelProcessing__/graphics/Solid_coal.png",
  icon_size = 64, icon_mipmaps = 4,
  prerequistes = {"automobilism", "railway"},
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "solid-coal"
    }
  },
  unit =
  {
    count = 200,
    ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 2}},
    time = 30
  },
}

local SolidFuelExperimentationResearch = {
    type = "technology",
  name = "Solid-fuel-experimentation-research",
  icon = "__AdvancedFuelProcessing__/graphics/Solid_fuel.png",
  icon_size = 64, icon_mipmaps = 4,
  prerequistes = {"advanced-oil-processing"},
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "solid-heavy-oil"
    },
    {
        type = "unlock-recipe",
        recipe="solid-light-oil"
    }
  },
  unit =
  {
    count = 200,
    ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 2}},
    time = 30
  },
}



table.insert(data.raw.technology["rocket-fuel"].effects,{type = "unlock-recipe",recipe = "llr-rocket-fuel"})

data:extend{VehicleFuel, SolidHeavyOil, SolidHeavyOilRecipe, SolidLightOil, SolidLightOilRecipe, SolidCoal, SolidCoalRecipe, llrRocketFuel, llrRocketFuelRecipe}