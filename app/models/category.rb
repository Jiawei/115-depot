class Category < ActiveRecord::Base
  has_many :nodes
end
