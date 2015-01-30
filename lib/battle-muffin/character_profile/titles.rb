class Character 
  module Titles
    def get_titles
      @api_handler.query("character/#{@info['realm']}/#{@info['name']}?fields=titles&")['titles']
    end
  end
end
