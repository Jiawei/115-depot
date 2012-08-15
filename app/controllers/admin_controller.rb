class AdminController < ApplicationController
  def index
    if User.find(session[:user_id]).usertype != "admin"
       redirect_to store_url, :notice => "Permission denied"
    else
	    @total_orders = Order.count
	  end
  end

end
