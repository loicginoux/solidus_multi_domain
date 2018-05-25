Spree::Admin::PricesController.class_eval do
  # before_action :update_price_stores, only: [:create]
  before_action :set_price_stores, only: [:new, :edit, :create]

  private

  def set_price_stores
    if @price.new_record?
      @product_stores = @product.stores
    else
      @product_stores = @price.product.stores
    end
  end

  # def update_price_stores
  #   # Remove all store associations if store data is being passed and no stores are selected
  #   if params[:update_store_ids] && !params[:price].key?(:store_ids)
  #     @price.store_id
  #   else
  #     @price.stores = Spree::Store.where(id: (params[:price][:store_id] || []))
  #   end
  # end
end if SpreeMultiDomain::Engine.admin_available?
