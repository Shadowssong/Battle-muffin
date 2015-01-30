class Character 
  module PetSlots
    def get_pet_slots
      @api_handler.query("character/#{@info['realm']}/#{@info['name']}?fields=petSlots&")['petSlots']
    end
  end
end
