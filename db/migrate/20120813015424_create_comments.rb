class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :user_id
      t.text :content
      t.integer :product_id
      t.integer :grades

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
