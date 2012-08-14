class Category < ActiveRecord::Base
  has_many :categorynodes, :dependent => :destroy
end
