Spree::User.class_eval do
  has_and_belongs_to_many :stores, :join_table => 'spree_users_stores'
  scope :by_store, lambda { |store| joins(:stores).where("spree_users_stores.store_id = ?", store) }
end
