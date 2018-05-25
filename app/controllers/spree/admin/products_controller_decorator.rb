Spree::Admin::ProductsController.class_eval do
  before_action :update_product_stores, only: [:update]
  before_action :set_product_stores, only: [:edit]

  private


  def set_product_stores
    @product_stores = @product.stores.map(&:id)
  end

  def update_product_stores
    # Remove all store associations if store data is being passed and no stores are selected
    if params[:update_store_ids] && !params[:product].key?(:store_ids)
      @product.stores.clear
    end
  end
end if SpreeMultiDomain::Engine.admin_available?
