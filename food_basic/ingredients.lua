-- FOOD MOD
-- A mod written by rubenwardy that adds
-- food to the minetest game
-- =====================================
-- >> food_basic/ingredients.lua
-- Fallback ingredients
-- =====================================

-- Boilerplate to support localized strings if intllib mod is installed.
local S = 0
if minetest.get_modpath("intllib") then
	S = intllib.Getter()
else
	S = function ( s ) return s end
end

if food.bing["dry_shrub"] ~= "none" then
	food.module("wheat", function()
		minetest.register_craftitem(":food:wheat", {
			description = S("Wheat"),
			inventory_image = "food_wheat.png",
			groups = {food_wheat=1}
		})
		food.craft({
			type = "shapeless",
			output = "food:wheat",
			recipe = {food.bing["dry_shrub"]}
		})
	end, true)

	food.module("flour", function()
		minetest.register_craftitem(":food:flour", {
			description = S("Flour"),
			inventory_image = "food_flour.png",
			groups = {food_flour = 1}
		})
		food.craft({
			output = "food:flour",
			recipe = {
				{"group:food_wheat"},
				{"group:food_wheat"}
			}
		})
	end, true)
end

if food.bing["dirt"] ~= "none" and food.bing["apple"] ~= "none" then
	food.module("potato", function()
		minetest.register_craftitem(":food:potato", {
			description = S("Potato"),
			inventory_image = "food_potato.png",
			groups = {food_potato = 1}
		})
		food.craft({
			output = "food:potato",
			recipe = {
				{food.bing["dirt"]},
				{food.bing["apple"]}
			}
		})
	end, true)

	food.module("meat_raw", function()
		minetest.register_craftitem(":food:meat_raw", {
			description = S("Raw meat"),
			image = "food_meat_raw.png",
			on_use = food.item_eat(1),
			groups = { meat=1, eatable=1, food_meat=1, food_meat_raw=1 },
			stack_max=25
		})
		food.craft({
			output = "food:meat_raw",
			recipe = {
				{food.bing["apple"]},
				{food.bing["dirt"]}
			}
		})
	end, true)
end

if food.bing["desert_sand"] ~= "none" then
	food.module("orange", function()
		minetest.register_craftitem(":food:orange", {
			description = S("Orange"),
			inventory_image = "food_orange.png",
			groups = {food_orange = 1}
		})
		food.craft({
			output = "food:orange",
			recipe = {
				{"", food.bing["desert_sand"], ""},
				{food.bing["desert_sand"], food.bing["desert_sand"], food.bing["desert_sand"]},
				{"", food.bing["desert_sand"], ""}
			}
		})
	end, true)

	food.module("tomato", function()
		minetest.register_craftitem(":food:tomato", {
			description = S("Tomato"),
			inventory_image = "food_tomato.png",
			groups = {food_tomato = 1}
		})
		food.craft({
			output = "food:tomato",
			recipe = {
				{"", food.bing["desert_sand"], ""},
				{food.bing["desert_sand"], "", food.bing["desert_sand"]},
				{"", food.bing["desert_sand"], ""}
			}
		})
	end, true)
end

if food.bing["apple"] ~= "none" then
	food.module("carrot", function()
		minetest.register_craftitem(":food:carrot", {
			description = S("Carrot"),
			inventory_image = "food_carrot.png",
			groups = {food_carrot=1},
			on_use = food.item_eat(3)
		})
		food.craft({
			output = "food:carrot",
			recipe = {
				{food.bing["apple"], food.bing["apple"], food.bing["apple"]},
			}
		})
	end, true)

	food.module("cocoa", function()
		minetest.register_craftitem(":food:cocoa", {
			description = S("Cocoa Bean"),
			inventory_image = "food_cocoa.png",
			groups = {food_cocoa=1}
		})
		food.craft({
			output = "food:cocoa",
			recipe = {
				{"", food.bing["apple"], ""},
				{food.bing["apple"], "", food.bing["apple"]},
				{"", food.bing["apple"], ""}
			}
		})
	end, true)
end

if (food.bing["bucket_water"] ~= "none" or food.bing["bucket_river_water"] ~= "none" )
and food.bing["sand"] ~= "none" then
	local repl_bucket = food.bing["bucket_empty"] ~= "none" and
		{{"group:food_water_bucket", food.bing["bucket_empty"]}} or nil
	
	food.module("milk", function()
		minetest.register_craftitem(":food:milk", {
			description = S("Milk"),
			image = "food_milk.png",
			on_use = food.item_eat(1),
			groups = { eatable=1, food_milk = 1 },
			stack_max=10
		})
		food.craft({
			output = "food:milk",
			recipe = {
				{"group:food_wheat"},
				{"group:food_water_bucket"}
			},
			replacements = repl_bucket
		})
	end, true)
end

if food.bing["sand"] ~= "none" then
	food.module("egg", function()
		minetest.register_craftitem(":food:egg", {
			description = S("Egg"),
			inventory_image = "food_egg.png",
			groups = {food_egg=1}
		})
		food.craft({
			output = "food:egg",
			recipe = {
				{"", food.bing["sand"], ""},
				{food.bing["sand"], "", food.bing["sand"]},
				{"", food.bing["sand"], ""}
			}
		})
	end, true)
end

if food.bing["papyrus"] ~= "none" then
	food.module("sugar", function()
		minetest.register_craftitem(":food:sugar", {
			description = S("Sugar"),
			inventory_image = "food_sugar.png",
			groups = {food_sugar=1}
		})

		minetest.register_craft({
			type = "shapeless",
			output = "food:sugar",
			recipe = {food.bing["papyrus"]},
		})
	end, true)
end

if food.bing["clay"] ~= "none" then
	food.module("bowl", function()
		minetest.register_craftitem(":food:bowl",{
			description = S("Bowl"),
			inventory_image = "food_bowl.png",
			groups = {food_bowl=1}
		})
		food.craft({
			output = "food:bowl",
			recipe = {
				{food.bing["clay"],"",food.bing["clay"]},
				{"",food.bing["clay"],""}
			}
		})
	end, true)
end

food.module("chocolate_powder", function()
	minetest.register_craftitem(":food:chocolate_powder", {
		description = S("Chocolate Powder"),
		inventory_image = "food_chocolate_powder.png",
		groups = {food_choco_powder = 1}
	})
	food.craft({
		output = "food:chocolate_powder 16",
		recipe = {
			{"group:food_cocoa","group:food_cocoa","group:food_cocoa"},
			{"group:food_cocoa","group:food_cocoa","group:food_cocoa"},
			{"group:food_cocoa","group:food_cocoa","group:food_cocoa"}
		}
	})
end, true)

food.module("pasta", function()
	minetest.register_craftitem(":food:pasta",{
		description = S("Pasta"),
		inventory_image = "food_pasta.png",
		groups = {food_pasta=1}
	})
	food.craft({
		output = "food:pasta 4",
		type = "shapeless",
		recipe = {"group:food_flour","group:food_egg","group:food_egg"}
	})
end, true)

food.module("butter", function()
	minetest.register_craftitem(":food:butter", {
		description = S("Butter"),
		inventory_image = "food_butter.png",
		groups = {food_butter=1}
	})
	food.craft({
		output = "food:butter",
		recipe = {
			{"group:food_milk","group:food_milk"},
		}
	})
	local replacements = food.bing["bucket_empty"] ~= "none" and {{"group:food_milkbucket", food.bing["bucket_empty"].." 2"}}
		or nil
	food.craft({
		output = "food:butter 2",
		recipe = {{"group:food_milkbucket","group:food_milkbucket"}},
		replacements = replacements
	})
end, true)

food.module("cheese", function()
	minetest.register_craftitem(":food:cheese", {
		description = S("Cheese"),
		inventory_image = "food_cheese.png",
		on_use = food.item_eat(4),
		groups = {food_cheese=1}
	})
	food.craft({
		output = "food:cheese",
		recipe = {
			{"group:food_butter","group:food_butter"},
		}
	})
end, true)
