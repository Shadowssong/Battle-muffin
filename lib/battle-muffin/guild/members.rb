class Guild 
  module Members
    def get_members
      @api_handler.query("guild/#{@info['realm']}/#{@info['name']}?fields=members&")['members']
    end
  end
end
