class Character 
  module Quests
    def get_quests
      @api_handler.query("character/#{@info['realm']}/#{@info['name']}?fields=quests&")['quests']
    end
  end
end
