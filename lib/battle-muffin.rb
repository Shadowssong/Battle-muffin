require 'httparty'
require 'pry'

# Require our modules
require File.dirname(__FILE__) + '/battle-muffin/data-resources/character_races'
require File.dirname(__FILE__) + '/battle-muffin/character_profile/character_profile'

class BattleMuffin
  include BattleMuffin::DataResource::CharacterRaces
  include BattleMuffin::CharacterProfile::CharacterProfile

  def initialize(api_key, locale='en_US')
    @api_key = api_key
    @locale = locale
    @races = self.get_races
  end

  def races
    @races
  end

  def api_key
    @api_key
  end

  def locale
    @locale
  end
end
