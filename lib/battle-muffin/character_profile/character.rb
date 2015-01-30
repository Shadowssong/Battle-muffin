require_relative 'achievements'
require_relative 'appearance'
require_relative 'audit'
require_relative 'feed'
require_relative 'guild'
require_relative 'hunter_pets'
require_relative 'items'
require_relative 'mounts'
require_relative 'pet_slots'
require_relative 'pets'
require_relative 'progression'
require_relative 'pvp'
require_relative 'quests'
require_relative 'reputation'
require_relative 'stats'
require_relative 'talents'
require_relative 'titles'

class Character
  include Character::Achievements
  include Character::Appearance
  include Character::Audit
  include Character::Feed
  include Character::Guild
  include Character::HunterPets
  include Character::Items
  include Character::Mounts
  include Character::PetSlots
  include Character::Pets
  include Character::Progression
  include Character::PVP
  include Character::Quests
  include Character::Reputation
  include Character::Stats
  include Character::Talents
  include Character::Titles

  def initialize(api_handler, realm, character_name)
    @api_handler = api_handler
    @info = @api_handler.query("character/#{realm}/#{character_name}?")
  end

  def last_modified
    @info['lastModified']
  end

  def name
    @info['name']
  end

  def realm
    @info['realm']
  end

  def battlegroup
    @info['battlegroup']
  end

  def class
    @info['class']
  end

  def race
    @info['race']
  end

  def gender
    @info['gender']
  end

  def level
    @info['level']
  end

  def achievement_points
    @info['achievement_points']
  end

  def thumbnail
    @info['thumbnail']
  end

  def calc_class
    @info['calcClass']
  end

  def total_honorable_kills
    @info['totalHonorableKills']
  end
end
