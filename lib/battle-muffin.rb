require 'httparty'
require 'pry'

# Require our modules
require File.dirname(__FILE__) + '/battle-muffin/character_profile/character_profile'
require File.dirname(__FILE__) + '/battle-muffin/data-resources/character_races'
require File.dirname(__FILE__) + '/battle-muffin/data-resources/character_classes'
require File.dirname(__FILE__) + '/battle-muffin/data-resources/character_achievements'
require File.dirname(__FILE__) + '/battle-muffin/data-resources/guild_rewards'
require File.dirname(__FILE__) + '/battle-muffin/data-resources/guild_perks'
require File.dirname(__FILE__) + '/battle-muffin/data-resources/item_classes'
require File.dirname(__FILE__) + '/battle-muffin/data-resources/talents'
require File.dirname(__FILE__) + '/battle-muffin/data-resources/pet_types'

class BattleMuffin
  include BattleMuffin::CharacterProfile::CharacterProfile
  include BattleMuffin::DataResource::CharacterRaces
  include BattleMuffin::DataResource::CharacterClasses
  include BattleMuffin::DataResource::CharacterAchievements
  include BattleMuffin::DataResource::GuildRewards
  include BattleMuffin::DataResource::GuildPerks
  include BattleMuffin::DataResource::ItemClasses
  include BattleMuffin::DataResource::Talents
  include BattleMuffin::DataResource::PetTypes

  def initialize(api_key, locale='en_US')
    @api_key = api_key
    @locale = locale
    @races = self.get_races
    @classes = self.get_character_classes
    @achievements = self.get_achievements
    @rewards = self.get_rewards
    @perks = self.get_perks
    @item_classes = self.get_item_classes
    @talents = self.get_talents
    @pet_types = self.get_pet_types
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

  def achievements
    @achievements
  end

  def rewards
    @rewards
  end

  def perks
    @perks
  end

  def item_classes
    @perks
  end

  def talents
    @perks
  end
end
