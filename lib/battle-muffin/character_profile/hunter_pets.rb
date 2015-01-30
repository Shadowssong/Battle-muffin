class Character 
  module HunterPets
    def get_hunter_pets
      @api_handler.query("character/#{@info['realm']}/#{@info['name']}?fields=hunterPets&")['hunterPets']
    end
  end
end
