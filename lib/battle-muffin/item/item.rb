class BattleMuffin
  module Item
    module Item
      def get_item(item_num)
        @api_handler.query("item/#{item_num}?")
      end
    end
  end
end
