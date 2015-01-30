class Character 
  module Feed
    def get_feed
      @api_handler.query("character/#{@info['realm']}/#{@info['name']}?fields=feed&")['feed']
    end
  end
end
