class BattleMuffin 
  module DataResource
    module CharacterClasses
      def get_character_classes
        @api_handler.query("data/character/classes?")
      end
    end
  end
end