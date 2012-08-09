class CreateCategorynodes < ActiveRecord::Migration
  def self.up
    create_table :categorynodes do |t|
      t.string :title
      t.string :parent

      t.timestamps
    end
  end

  def self.down
    drop_table :categorynodes
  end
end
