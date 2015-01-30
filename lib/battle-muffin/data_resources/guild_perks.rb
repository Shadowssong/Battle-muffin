class BattleMuffin 
  module DataResource
    module GuildPerks
      def get_perks
        @api_handler.query("data/guild/perks?")
      end
    end
  end
end