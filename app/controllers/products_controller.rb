class ProductsController < ApplicationController
  # GET /products
  # GET /products.xml
  def index
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @products }
    end
  end

  # GET /products/1
  # GET /products/1.xml
  def show
    @product = Product.find(params[:id])
    
    if @product.seller_id != session[:user_id] && User.find(session[:user_id]).usertype != "admin"
      redirect_to store_url, :notice => "Permission denied"
    else
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @product }
      end
    end
  end

  # GET /products/new
  # GET /products/new.xml
  def new
    if session[:user_id]  
      if User.find(session[:user_id]).usertype != "seller" && User.find(session[:user_id]).usertype != "admin"
        redirect_to store_url, :notice => "Permission denied"
      else 
        @product = Product.new
        respond_to do |format|
          format.html # new.html.erb
          format.xml  { render :xml => @product }
        end
      end
    else
      redirect_to store_url, :notice => "Permission denied"
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
    @categories = Categorynode.all.collect {|c| [c.title, c.title] }
    if @product.seller_id != session[:user_id] && User.find(session[:user_id]).usertype != "admin"
      redirect_to store_url, :notice => "Permission denied"
    end
  end

  # POST /products
  # POST /products.xml
  def create
    @product = Product.new(params[:product])
    @product.seller_id = session[:user_id]
    puts "!!!!!!!!!!!!!!!!!!!!!!!!!1"
    puts @product.image_relative_path
    
    respond_to do |format|
      if @product.save
        @product.image_url = "/product/image/" + @product.image_relative_path
        @product.save
        format.html { redirect_to(@product, :notice => 'Product was successfully created.') }
        format.xml  { render :xml => @product, :status => :created, :location => @product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.xml
  def update
    @product = Product.find(params[:id])
    if @product.seller_id != session[:user_id] && User.find(session[:user_id]).usertype != "admin"
      redirect_to store_url, :notice => "Permission denied"
    else
      respond_to do |format|
        if @product.update_attributes(params[:product])
          format.html { redirect_to(@product, :notice => 'Product was successfully updated.') }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.xml
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to(products_url) }
      format.xml  { head :ok }
    end
  end
  
  def who_bought
    @product = Product.find(params[:id])
    respond_to do |format| 
      format.atom
      format.xml { render :xml => @product}
    end
  end

  def detail
    @product = Product.find(params[:id])
    @comments = Comment.where(:product_id => @product.id)
    session[:product_id] = @product.id



    @average = 0
    sum = 0
    unless @comments.empty?
      @comments.each do |c| 
        sum += c.grades 
      end   
      @average = sum / @comments.size
      @average = format("%.2f", @average) 
    end
    @average = format("%.2f", @average)



    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product }
    end
  end
end
