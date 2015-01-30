class BattleMuffin 
  module Realm
    module RealmStatus
      def get_realm_status
        @api_handler.query("realm/status?")
      end
    end
  end
end