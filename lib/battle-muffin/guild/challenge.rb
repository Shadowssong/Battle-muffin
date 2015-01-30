class Guild 
  module Challenge
    def get_challenge
      @api_handler.query("guild/#{@info['realm']}/#{@info['name']}?fields=challenge&")['challenge']
    end
  end
end
