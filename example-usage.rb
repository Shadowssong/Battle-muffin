require 'battle-muffin'
require 'pry'

client = BattleMuffinClient.new("7argtwb4rtuy2ccwcfjs74eapm52juhv")
sovrano = client.character_profile "Mal'Ganis", "Sovrano"
binding.pry
