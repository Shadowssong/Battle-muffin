class BattleMuffin 
  module Spell
      def get_spell(id)
        @api_handler.query("spell/#{id}?")
      end
  end
end