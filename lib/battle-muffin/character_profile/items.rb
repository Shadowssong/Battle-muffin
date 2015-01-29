class Character 
  module Items
    def get_items
      @api_handler.query("character/#{@info['realm']}/#{@info['name']}?fields=items&")['items']
    end
  end
end
