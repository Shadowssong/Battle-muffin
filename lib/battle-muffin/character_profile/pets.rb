class Character 
  module Pets
    def get_pets
      @api_handler.query("character/#{@info['realm']}/#{@info['name']}?fields=pets&")['pets']
    end
  end
end
