-- FOOD MOD
-- A mod written by rubenwardy that adds
-- food to the minetest game
-- =====================================
-- >> food/support.lua
-- Support external mods
-- =====================================

-- The following ingredient list is licensed under WTFPL
-- You may use the list in your mod. I am doing this to
-- make it easier for mods to support lots of others -
-- good for the end user

-- Add support for other mods
food.support("flour", {
	"farming:flour",
	"farming:flour_multigrain",
})
food.support("wheat", "farming:wheat")
food.support("bowl", "farming:bowl")
food.support("cocoa", {"farming_plus:cocoa_bean", "farming:cocoa_beans"})
food.support("cup", food.bing["cup"])
food.support("cactus", food.bing["cactus"])
food.support("apple", food.bing["apple"])
food.support("orange", {
	"farming_plus:orange_item",
	"ethereal:orange"
})
food.disable_if("ethereal", "orange")

food.support("potato", {
	"docfarming:potato",
	"veggies:potato",
	"farming_plus:potato_item",
	"farming:potato"
})
food.support("tomato", {
	"farming_plus:tomato_item",
	"plantlib:tomato",
	"farming:tomato"
})
food.support("carrot", {
	"farming_plus:carrot_item",
	"docfarming:carrot",
	"plantlib:carrot",
	"jkfarming:carrot",
	"farming:carrot"
})
food.support("milk", {
	"animalmaterials:milk",
	"my_mobs:milk_glass_cup",
	"mtfoods:dandelion_milk",
	"mobs:glass_milk",
	"farming:soy_milk"
})
food.support("butter", "mobs:butter")
food.support("cheese", "mobs:cheese")
food.support("water_bucket", {
	food.bing["bucket_water"],
	food.bing["bucket_river_water"]
})
food.support("milkbucket", {
	"jkanimals:bucket_milk",
	"mobs:bucket_milk",
})
food.support("egg", {
	"animalmaterials:egg",
	"animalmaterials:egg_big",
	"jkanimals:egg",
	"mobs:egg"
})
food.support("meat_cooked", {
	"mobs:meat",
	"jkanimals:meat",
	"mobfcooking:cooked_pork",
	"mobfcooking:cooked_beef",
	"mobfcooking:cooked_chicken",
	"mobfcooking:cooked_lamb",
	"mobfcooking:cooked_venison",
	"farming:tofu_cooked"
})
food.support("meat_raw", {
	"mobs:meat_raw",
	"mobs:chicken_raw",
	"farming:tofu"
})
food.support("sugar", {
	"jkfarming:sugar",
	"bushes:sugar",
	"mtfoods:sugar",
	"mobs:honey",
	"farming:sugar"
})
food.support("cactus_juice", "farming:cactus_juice")
food.support("orange_juice", "farming:carrot_juice", true)
food.support("apple_juice", "farming:pineapple_juice", true)
food.support("dark_chocolate", "farming:chocolate_dark")
food.support("baked_potato", "farming:baked_potato")
food.support("pasta", "farming:pasta")
