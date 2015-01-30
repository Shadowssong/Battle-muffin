class Character 
  module Appearance
    def get_appearance
      @api_handler.query("character/#{@info['realm']}/#{@info['name']}?fields=appearance&")['appearance']
    end
  end
end
