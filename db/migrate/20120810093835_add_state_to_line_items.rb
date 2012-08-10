class AddStateToLineItems < ActiveRecord::Migration
  def self.up
    add_column :line_items, :state, :string
  end

  def self.down
    remove_column :line_items, :state
  end
end
