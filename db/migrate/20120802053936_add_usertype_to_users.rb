class AddUsertypeToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :usertype, :string, :default => "customer"
  end

  def self.down
    remove_column :users, :usertype
  end
end
