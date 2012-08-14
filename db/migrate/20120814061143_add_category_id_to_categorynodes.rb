class AddCategoryIdToCategorynodes < ActiveRecord::Migration
  def self.up
    add_column :categorynodes, :category_id, :integer
  end

  def self.down
    remove_column :categorynodes, :category_id
  end
end
