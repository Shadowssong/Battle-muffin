class BattleMuffin
  module Item
    module ItemSet
      def get_item_set(item_set_num)
        @api_handler.query("item/set/#{item_set_num}?")
      end
    end
  end
end
