class AddNoticeToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :notice, :string
  end

  def self.down
    remove_column :orders, :notice
  end
end
