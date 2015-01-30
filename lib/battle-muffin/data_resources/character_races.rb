class BattleMuffin 
  module DataResource
    module CharacterRaces
      def get_races
        @api_handler.query("data/character/races?")
      end
    end
  end
end
