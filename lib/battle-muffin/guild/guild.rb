require_relative 'members'
require_relative 'achievements'
require_relative 'news'
require_relative 'challenge'


class Guild
  include Guild::Members
  include Guild::Achievements
  include Guild::News
  include Guild::Challenge

  def initialize(api_handler, realm, guild_name)
    @api_handler = api_handler
    @info = @api_handler.query("guild/#{realm.gsub(' ', '%20')}/#{guild_name.gsub(' ', '%20')}?")
    @info['name'] = name
    @info['realm'] = realm
  end

  def all_info
    all_items = %w{ members achievements news challenge }
    @api_handler.query("guild/#{realm}/#{name}?fields=#{all_items.join(",")}&")
  end

  def side 
    @info['side']
  end

  def realm
    @info['realm'].gsub(' ', '%20')
  end

  def name
    @info['name'].gsub(' ', '%20')
  end
end
