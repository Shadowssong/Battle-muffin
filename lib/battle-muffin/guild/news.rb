class Guild 
  module News
    def get_news
      @api_handler.query("guild/#{@info['realm']}/#{@info['name']}?fields=news&")['news']
    end
  end
end
