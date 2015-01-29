require_relative 'character'

class CharacterHandler
  def initialize(api_handler)
    @api_handler = api_handler
  end

  def search(realm, character_name)
    Character.new(@api_handler, realm, character_name)
  end
end
