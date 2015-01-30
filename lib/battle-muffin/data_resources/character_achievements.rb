class BattleMuffin 
  module DataResource
    module CharacterAchievements
      def get_achievements
        @api_handler.query("data/character/achievements?")
      end
    end
  end
end