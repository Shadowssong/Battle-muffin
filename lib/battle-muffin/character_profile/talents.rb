class Character 
  module Talents
    def get_talents
      @api_handler.query("character/#{@info['realm']}/#{@info['name']}?fields=talents&")['talents']
    end
  end
end
