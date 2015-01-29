require 'battle-muffin'
require 'pry'

client = BattleMuffin.new("7argtwb4rtuy2ccwcfjs74eapm52juhv")
sovrano = client.character_handler.search("Mal'Ganis", "Sovrano")

puts sovrano.get_achievements
puts sovrano.get_achievements
puts sovrano.get_appearance
puts sovrano.get_audit
puts sovrano.get_feed
puts sovrano.get_guild
puts sovrano.get_hunter_pets
puts sovrano.get_items
puts sovrano.get_mounts
puts sovrano.get_pet_slots
puts sovrano.get_pets
puts sovrano.get_progression
puts sovrano.get_pvp
puts sovrano.get_quests
puts sovrano.get_reputation
puts sovrano.get_stats
puts sovrano.get_talents
puts sovrano.get_titles

binding.pry
