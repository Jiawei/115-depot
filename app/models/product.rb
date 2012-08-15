class Product < ActiveRecord::Base
	default_scope :order => 'title'
	before_destroy :ensure_not_referenced_by_any_line_item
	belongs_to :users
	has_many :comments
	has_many :orders, :through => :line_items
	validates :title, :description, :categorynode_name, :presence => true
	validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
	validates :title, :uniqueness => true
	
  file_column :image
	
	
	private 
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else 
      errors.add(:base, 'Line Items present')
      return false
    end
  end
	
	# This is search
	def self.search(query)
	  if query
	    query = query.split(" ")
	    conditions = []
	    query.each do |q|
	      conditions << ['title LIKE ?', "%#{q}%"]
	      conditions << ['description LIKE ?', "%#{q}%"]
	      conditions << ['categorynode_name LIKE ?', "%#{q}%"]
	    end
	    find(:all, :conditions => [conditions.transpose.first.join(' OR '), *conditions.transpose.last])
	  else 
	    find(:all)
	  end
	end

	# This is cate
	def self.category(query)
	  if query
	    find(:all, :conditions => ['categorynode_name LIKE ?',"%#{query}%"])
      else
	    find(:all)
	  end
	end
end
