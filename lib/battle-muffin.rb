require 'httparty'
require 'pry'

# Require modules
require File.dirname(__FILE__) + '/battle-muffin/api_handler'
require File.dirname(__FILE__) + '/battle-muffin/character_profile'
require File.dirname(__FILE__) + '/battle-muffin/data_resources'
require File.dirname(__FILE__) + '/battle-muffin/realm'
require File.dirname(__FILE__) + '/battle-muffin/item'
require File.dirname(__FILE__) + '/battle-muffin/guild/guild_handler'
require File.dirname(__FILE__) + '/battle-muffin/achievement'
require File.dirname(__FILE__) + '/battle-muffin/spell'


class BattleMuffin
  include BattleMuffin::DataResource::CharacterRaces
  include BattleMuffin::DataResource::CharacterClasses
  include BattleMuffin::DataResource::CharacterAchievements
  include BattleMuffin::DataResource::GuildRewards
  include BattleMuffin::DataResource::GuildPerks
  include BattleMuffin::DataResource::ItemClasses
  include BattleMuffin::DataResource::Talents
  include BattleMuffin::DataResource::PetTypes
  include BattleMuffin::Realm::RealmStatus
  include BattleMuffin::Item::Item
  include BattleMuffin::Item::ItemSet
  include BattleMuffin::Achievement
  include BattleMuffin::Spell

  def initialize(api_key, locale='en_US')
    @api_handler = APIHandler.new(api_key, locale)
    @character_handler = CharacterHandler.new(@api_handler)
    @guild_handler = GuildHandler.new(@api_handler)
  end

  def character_handler
    @character_handler
  end

  def races
    @races
  end

  def classes
    @classes
  end

  def api_key
    @api_key
  end

  def locale
    @locale
  end

  def character_achievements
    @character_achievements
  end

  def rewards
    @rewards
  end

  def perks
    @perks
  end

  def item_classes
    @item_classes
  end

  def talents
    @talents
  end

  def pet_types
    @pet_types
  end

  def realm_status
    @realm_status
  end

  def guild_handler
    @guild_handler
  end
end
