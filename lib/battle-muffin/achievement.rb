class BattleMuffin 
  module Achievement
      def get_achievement(id)
        @api_handler.query("achievement/#{id}?")
      end
  end
end
