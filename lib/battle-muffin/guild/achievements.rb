class Guild 
  module Achievements
    def get_achievements
      @api_handler.query("guild/#{@info['realm']}/#{@info['name']}?fields=achievements&")['achievements']
    end
  end
end
