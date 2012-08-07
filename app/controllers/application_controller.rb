class ApplicationController < ActionController::Base
  #before_filter :authorize
  before_filter :set_i18n_locale_from_params
  protect_from_forgery

  private 
  def current_cart
    puts session[:user_id]
    puts session[:user_id].class

  	cart = Cart.find_by_user_id(User.find(session[:user_id]))
  	
    rescue ActiveRecord::RecordNotFound
  end

  def current_user
    User.find(session[:user_id])
    rescue ActiveRecord::RecordNotFound
  end

  protected
  def authorize
    unless User.find_by_id(session[:user_id])
      redirect_to login_url, :notice => "Please log in"
    end
  end

  def set_i18n_locale_from_params
    if params[:locale]
      if I18n.available_locales.include?(params[:locale].to_sym)
        I18n.locale = params[:locale]
      else
        flash.now[:notice] =
          "#{params[:locale]} translation not available"
        logger.error flash.now[:notice]
      end
    end
  end

  def default_url_options
    { :locale => I18n.locale }
  end
end
