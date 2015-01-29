class Character 
  module Stats
    def get_stats
      @api_handler.query("character/#{@info['realm']}/#{@info['name']}?fields=stats&")['stats']
    end
  end
end
