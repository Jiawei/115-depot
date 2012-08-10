class AddSellerIdToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :seller_id, :integer
  end

  def self.down
    remove_column :orders, :seller_id
  end
end
