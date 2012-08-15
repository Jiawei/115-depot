class AddCategorynodeNameToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :categorynode_name, :string
  end

  def self.down
    remove_column :products, :categorynode_name
  end
end
