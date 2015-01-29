class Character 
  module Mounts
    def get_mounts
      @api_handler.query("character/#{@info['realm']}/#{@info['name']}?fields=mounts&")['mounts']
    end
  end
end
