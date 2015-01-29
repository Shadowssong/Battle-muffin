class Character 
  module PVP
    def get_pvp
      @api_handler.query("character/#{@info['realm']}/#{@info['name']}?fields=pvp&")['pvp']
    end
  end
end
