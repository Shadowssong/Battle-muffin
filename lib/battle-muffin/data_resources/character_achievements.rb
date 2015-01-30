class BattleMuffin 
  module DataResource
    module CharacterAchievements
      def get_character_achievements
        @api_handler.query("data/character/achievements?")
      end
    end
  end
end