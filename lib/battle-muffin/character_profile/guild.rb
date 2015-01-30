class Character 
  module Guild
    def get_guild
      @api_handler.query("character/#{@info['realm']}/#{@info['name']}?fields=guild&")['guild']
    end
  end
end
