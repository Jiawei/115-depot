class SessionsController < ApplicationController
  skip_before_filter :authorize
  def new
  end

  def create
	  if user = User.authenticate(params[:name], params[:password])
		  session[:user_id] = user.id
		  redirect_to admin_url
		  if Cart.find_by_user_id(user.id) == nil
		    Cart.create(:user_id => user.id);
      end
    
      session[:cart_id] = Cart.find_by_user_id(user.id).id
	  else 
		  redirect_to login_url, :alert => "Invalid user/password combination"
	  end
	  
	  

  end

  def destroy
	  session[:user_id] = nil
	  redirect_to store_url, :notice => "Logged out"
  end

end
