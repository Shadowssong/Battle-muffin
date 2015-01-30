class BattleMuffin 
  module DataResource
    module ItemClasses
      def get_item_classes
        @api_handler.query("data/item/classes?")
      end
    end
  end
end