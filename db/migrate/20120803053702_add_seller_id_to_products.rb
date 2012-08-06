class AddSellerIdToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :seller_id, :integer
  end

  def self.down
    remove_column :products, :seller_id
  end
end
