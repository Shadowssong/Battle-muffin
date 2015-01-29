class Character 
  module Progression
    def get_progression
      @api_handler.query("character/#{@info['realm']}/#{@info['name']}?fields=progression&")['progression']
    end
  end
end
