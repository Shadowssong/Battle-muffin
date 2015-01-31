class APIHandler
  def initialize(api_key, locale)
    @api_key = api_key
    @locale = locale
  end

  def query(query)
    puts "APIHandler - https://us.api.battle.net/wow/#{query}locale=#{@locale}&apikey=#{@api_key}"
    HTTParty.get("https://us.api.battle.net/wow/#{query}locale=#{@locale}&apikey=#{@api_key}")
  end
end
