require 'battle-muffin'
require 'pry'

client = BattleMuffin.new("7argtwb4rtuy2ccwcfjs74eapm52juhv")
sovrano = client.character_handler.search("Mal'Ganis", "Sovrano")

binding.pry
