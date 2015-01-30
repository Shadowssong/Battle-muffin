class BattleMuffin 
  module DataResource
    module GuildPerks
      def get_perks
        response = @api_handler.query("data/guild/perks?")
      end
    end
  end
end