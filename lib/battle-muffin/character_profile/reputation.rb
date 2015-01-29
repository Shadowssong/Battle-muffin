class Character 
  module Reputation
    def get_reputation
      @api_handler.query("character/#{@info['realm']}/#{@info['name']}?fields=reputation&")['reputation']
    end
  end
end
