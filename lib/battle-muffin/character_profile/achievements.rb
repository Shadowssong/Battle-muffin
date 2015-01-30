class Character 
  module Achievements
    def get_achievements
      @api_handler.query("character/#{@info['realm']}/#{@info['name']}?fields=achievements&")['achievements']
    end
  end
end
