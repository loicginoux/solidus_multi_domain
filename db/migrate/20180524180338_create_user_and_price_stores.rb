class CreateUserAndPriceStores < SolidusSupport::Migration[5.1]
  def self.up
    create_table :spree_users_stores, :id => false do |t|
      t.references :user
      t.references :store
    end

    if table_exists?('prices')
      add_column :prices, :store_id, :integer
    elsif table_exists?('spree_prices')
      add_column :spree_prices, :store_id, :integer unless column_exists?(:spree_prices, :store_id)
    end
  end

  def self.down
    drop_table :spree_users_stores
    if table_exists?('prices')
      remove_column :prices, :store_id
    elsif table_exists?('spree_prices')
      remove_column :spree_prices, :store_id
    end
  end
end
