class BattleMuffin 
  module DataResource
    module Talents
      def get_talents
        response = @api_handler.query("data/talents?")
      end
    end
  end
end