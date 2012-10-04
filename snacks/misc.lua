-- RUBENFOOD MOD
-- A mod written by rubenwardy that adds
-- food to the minetest game
-- =====================================
-- >> rubenfood/snacks/crumbles.lua
-- adds crumbles
-- =====================================
-- [regis-food] Rhubarb Crumble
-- =====================================

print "Food [Master] - Loading Splits"

-- Banana Split

minetest.register_craftitem("food:banana_split_raw", {
	description = "Banana Split Raw",
	inventory_image = "food_banana_split_raw.png",
})

minetest.register_craftitem("food:banana_split", {
	description = "Banana Split",
	inventory_image = "food_banana_split.png",
	groups={food=1},
	on_use = minetest.item_eat(3),
})

minetest.register_craft({
	output = "food:banana_split_raw",
	recipe = {{"food:chocolate_milk"},{"food:banana"}},
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}},
})
minetest.register_craft({
	type = "cooking",
	output = "food:banana_split",
	recipe = "food:banana_split_raw",
})