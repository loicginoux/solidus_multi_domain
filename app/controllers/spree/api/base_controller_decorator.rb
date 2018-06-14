module SpreeMultiStore
  module Api
    module BaseControllerDecorator
      def current_pricing_options
        Spree::Config.pricing_options_class.new(
          currency: current_store.try!(:default_currency).presence || Spree::Config[:currency],
          country_iso: current_store.try!(:cart_tax_country_iso).presence,
          store_id: current_store.try!(:id)
        )
      end
    end
  end
end

Spree::Api::BaseController.prepend(SpreeMultiStore::Api::BaseControllerDecorator)
