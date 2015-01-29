require 'httparty'
require 'pry'

# Require our modules
require File.dirname(__FILE__) + '/battle-muffin/api_handler'
require File.dirname(__FILE__) + '/battle-muffin/character_profile/character_handler'
require File.dirname(__FILE__) + '/battle-muffin/data-resources/character_races'

class BattleMuffin
  include BattleMuffin::DataResource::CharacterRaces

  def initialize(api_key, locale='en_US')
    @races = self.get_races
    @api_handler = APIHandler.new(api_key, locale)
    @character_handler = CharacterHandler.new(@api_handler)
  end

  def character_handler
    @character_handler
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
