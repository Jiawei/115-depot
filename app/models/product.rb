class Product < ActiveRecord::Base
	default_scope :order => 'title'
	before_destroy :ensure_not_referenced_by_any_line_item
	belongs_to :users
	has_many :comments

	private 
	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
			return true
		else 
			errors.add(:base, 'Line Items present')
			return false
		end
	end
	has_many :line_items
	has_many :orders, :through => :line_items
	validates :title, :description, :image_url, :categorynode_name, :presence => true
	validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
	validates :title, :uniqueness => true
	validates :image_url, :format => {
		:with	=> %r{\.(gif|jpg|png)$}i,
		:message => 'must be a URL for GIF, JPG or PNG image.'
	}
	
	# This is search
	def self.search(query)
	  if query
	    find(:all, :conditions => ['title LIKE ?',"%#{query}%"])
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
