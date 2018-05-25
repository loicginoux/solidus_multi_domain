Spree::Admin::UsersController.class_eval do
  before_action :update_user_stores, only: [:update]
  before_action :set_user_stores, only: [:edit]

  private

  def set_user_stores
    @user_stores = @user.stores.map(&:id)
  end

  def update_user_stores
    # Remove all store associations if store data is being passed and no stores are selected
    if params[:update_store_ids] && !params[:user].key?(:store_ids)
      @user.stores.clear
    else
      @user.stores = Spree::Store.where(id: (params[:user][:store_ids] || []))
    end
  end
end if SpreeMultiDomain::Engine.admin_available?
