class UsersController < ApplicationController
  skip_before_filter :authorize
  # GET /users
  # GET /users.xml
  def index
    @users = User.order(:name)
    if session[:user_id] == nil || User.find(session[:user_id]).usertype != "admin"
      redirect_to store_url, :notice => "Permission denied"
    else
      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @users }
      end
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])
    if session[:user_id] == nil || User.find(session[:user_id]).usertype != "admin"
      redirect_to store_url, :notice => "Permission denied"
    else
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @user }
      end
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
    if session[:user_id] == nil || @user.id != session[:user_id] && User.find(session[:user_id]).usertype != "admin"
      redirect_to store_url, :notice => "Permission denied"
    end
  end
  

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save 
        session[:user_id] = @user.id
        if Cart.find_by_user_id(@user.id) == nil
          Cart.create(:user_id => @user.id);
        end
        session[:cart_id] = Cart.find_by_user_id(@user.id).id
        
        format.html { redirect_to store_url }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])
    if session[:user_id] == nil || @user.id != session[:user_id] && User.find(session[:user_id]).usertype != "admin"
      redirect_to store_url, :notice => "Permission denied"
    else
      respond_to do |format|
        if @user.update_attributes(params[:user])
          if (session[:user_id] && User.find(session[:user_id]).usertype == "admin")
            format.html { redirect_to(users_url, :notice => "User #{@user.name} was successfully updated.") }
          else
            format.html { redirect_to(store_url, :notice => "User #{@user.name} was successfully updated.") }
          end
          format.xml  { head :ok } 
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
	begin
      @user.destroy
	  flash[:notice] = "User #{@user.name} deleted"
	rescue Exception => e
		flash[:notice] = e.message
	end

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
end
