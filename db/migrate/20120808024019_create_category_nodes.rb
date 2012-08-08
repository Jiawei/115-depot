class CreateCategoryNodes < ActiveRecord::Migration
  def self.up
    create_table :category_nodes do |t|
      t.string :title
      t.string :parent

      t.timestamps
    end
  end

  def self.down
    drop_table :category_nodes
  end
end
