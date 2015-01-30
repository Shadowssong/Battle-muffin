class Guild 
  module Members
    def get_members
      @api_handler.query("guild/#{realm}/#{name}?fields=members&")['members']
    end
  end
end
