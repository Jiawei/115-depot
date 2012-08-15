class Comment < ActiveRecord::Base
  belongs_to :products
  
  GRADES = [1, 2, 3, 4, 5];
  validates :content, :grades, :presence => true
end
