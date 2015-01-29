class Character 
  module Audit
    def get_audit
      @api_handler.query("character/#{@info['realm']}/#{@info['name']}?fields=audit&")['audit']
    end
  end
end
