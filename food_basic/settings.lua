food.bing = {} -- List of basic ingredients defined from Minetest settings

local settings = minetest.settings

food.bing["desert_sand"] = settings:get("basic_food_desert_sand") or "default:desert_sand"
food.bing["sand"] = settings:get("basic_food_sand") or "default:sand"
food.bing["dry_shrub"] = settings:get("basic_food_dry_shrub") or "default:dry_shrub"
food.bing["dirt"] = settings:get("basic_food_dirt") or "default:dirt"
food.bing["apple"] = settings:get("basic_food_apple") or "default:apple"
food.bing["cactus"] = settings:get("basic_food_cactus") or "default:cactus"
food.bing["bucket_water"] = settings:get("basic_food_bucket_water") or "bucket:bucket_water"
food.bing["bucket_river_water"] = settings:get("basic_food_bucket_river_water") or "bucket:bucket_river_water"
food.bing["bucket_empty"] = settings:get("basic_food_bucket_empty") or "bucket:bucket_empty"
food.bing["papyrus"] = settings:get("basic_food_papyrus") or "default:papyrus"
food.bing["clay"] = settings:get("basic_food_clay") or "default:clay_lump"
food.bing["cup"] = settings:get("basic_food_cup") or "vessels:drinking_glass"
