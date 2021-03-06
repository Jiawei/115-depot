class Order < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy
  PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order"]
  validates :name, :address, :email, :pay_type, :presence => true
  validates :pay_type, :inclusion => PAYMENT_TYPES
  validates_format_of :email, :with => %r/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/
 
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item| 
      item.cart_id = nil
      line_items << item
    end
  end
  
  def add_line_items_from_array(line_items_array)
    line_items_array.each do |item|
      item.cart_id = nil
      item.state = "ordered"
      line_items << item
    end
  end
end
