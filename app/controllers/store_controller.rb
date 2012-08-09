class StoreController < ApplicationController
  skip_before_filter :authorize
  def index
    @categories = Category.all
	@categorynodes = Categorynode.all
	if params[:set_locale]
	  redirect_to store_path(:locale => params[:set_locale])
	else
	  @products = Product.all
	  @cart = current_cart
    end
	
	if session[:user_id] == nil
	  @name = "Please login"
	else
	  @user = User.find(session[:user_id])
	  @name = @user.name + ", I am a " + @user.usertype
	end
  end
end
