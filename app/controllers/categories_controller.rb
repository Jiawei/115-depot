class CategoriesController < ApplicationController
  # GET /categories
  # GET /categories.xml
  def index
    if session[:user_id] == nil || User.find(session[:user_id]).usertype != "admin"
      redirect_to store_url, :notice => "Permission denied"
    else
      @categories = Category.all
      @categorynodes = Categorynode.all
      if params[:cate]
        @results = Product.category(params[:cate])
      end
    end
  end

  # GET /categories/1
  # GET /categories/1.xml
  # show category
  def show
    if session[:user_id] == nil || User.find(session[:user_id]).usertype != "admin"
      redirect_to store_url, :notice => "Permission denied"
    else
      @category = Category.find(params[:id])
  
      @categorynodes = Categorynode.all
  
      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @category }
      end
    end
  end

  # GET /categories/new
  # GET /categories/new.xml
  def new
    @category = Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @category }
    end
  end

  # GET /categories/1/edit
  def edit
    if session[:user_id] == nil || User.find(session[:user_id]).usertype != "admin"
       redirect_to store_url, :notice => "Permission denied"
    else
      @category = Category.find(params[:id])
    end
  end

  # POST /categories
  # POST /categories.xml
  def create
    if session[:user_id] == nil || User.find(session[:user_id]).usertype != "admin"
      redirect_to store_url, :notice => "Permission denied"
    else
      @category = Category.new(params[:category])
  
      respond_to do |format|
        if @category.save
          format.html { redirect_to(categories_url, :notice => 'Category was successfully created.') }
          format.xml  { render :xml => @category, :status => :created, :location => @category }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @category.errors, :status => :unprocessable_entity }
        end
      end
    end
  end

  # PUT /categories/1
  # PUT /categories/1.xml
  def update
    if session[:user_id] == nil || User.find(session[:user_id]).usertype != "admin"
      redirect_to store_url, :notice => "Permission denied"
    else
      @category = Category.find(params[:id])
  
      respond_to do |format|
        if @category.update_attributes(params[:category])
          format.html { redirect_to(categories_url, :notice => 'Category was successfully updated.') }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @category.errors, :status => :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.xml
  def destroy
    if session[:user_id] == nil || User.find(session[:user_id]).usertype != "admin"
      redirect_to store_url, :notice => "Permission denied"
    else
      @category = Category.find(params[:id])
      @category.destroy
  
      respond_to do |format|
        format.html { redirect_to(categories_url ,:notice => 'Category was successfully destory.') }
        format.xml  { head :ok }
      end
    end
  end

  def show_category
    @categories = Category.all
    @categorynodes = Categorynode.all
    if params[:cate]
      @results = Product.category(params[:cate])
    end

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @category }
    end
  end
end
