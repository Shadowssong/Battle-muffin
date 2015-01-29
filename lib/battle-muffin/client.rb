class BattleMuffinClient
  def initialize(api_key, locale='en_US')
    @api_key = api_key
    @locale = locale
  end

  def character_profile(realm, character_name)
    response = HTTParty.get("https://us.api.battle.net/wow/character/#{realm}/#{character_name}?locale=#{@locale}&apikey=#{@api_key}")
    # character
    #https://us.api.battle.net/wow/character/Mal'ganis/Sovrano?locale=en_US&apikey=7argtwb4rtuy2ccwcfjs74eapm52juhv
  end
end
