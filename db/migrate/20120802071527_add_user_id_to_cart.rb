class AddUserIdToCart < ActiveRecord::Migration
  def self.up
    add_column :carts, :user_id, :integer, :default => 0
  end

  def self.down
    remove_column :carts, :user_id
  end
end
