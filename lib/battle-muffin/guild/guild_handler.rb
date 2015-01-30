require_relative 'guild'

class GuildHandler
  def initialize(api_handler)
    @api_handler = api_handler
  end

  def search(realm, guild_name)
    Guild.new(@api_handler, realm, guild_name)
  end
end
