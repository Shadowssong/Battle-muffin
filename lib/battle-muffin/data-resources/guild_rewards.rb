class BattleMuffin 
  module DataResource
    module GuildRewards
      def get_rewards
        @api_handler.query("data/guild/rewards?")
      end
    end
  end
end