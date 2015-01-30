class BattleMuffin 
  module DataResource
    module PetTypes
      def get_pet_types
        response = @api_handler.query("data/pet/types?")
      end
    end
  end
end