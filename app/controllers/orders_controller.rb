class OrdersController < ApplicationController
  skip_before_filter :authorize, :only => [:new, :create]
  # GET /orders
  # GET /orders.xml
  def index
    @orders = Order.paginate :page => params[:page], :order=>'created_at desc',
      :per_page => 10

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @orders }
    end
  end

  # GET /orders/1
  # GET /orders/1.xml
  def show
    @order = Order.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @order }
    end
  end

  # GET /orders/new
  # GET /orders/new.xml
  def new
    @cart = current_cart
    if @cart.line_items.empty?
      redirect_to store_url, :notice => "Your cart is empty"
    return
    end

    @order = Order.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @order }
    end
  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
  end

  # POST /orders
  # POST /orders.xml
  def create
    flag = false
    cart = current_cart
    line_items = LineItem.where(:cart_id => cart.id)
    sellers_id = line_items.map {|l| Product.find(l.product_id).seller_id}
    sellers_id.uniq!

    sellers_id.each do |id|
      seller = User.find(id)
      @order = Order.new(params[:order])
      @order.seller_id = id
      @order.customer_id = session[:user_id]
      line_items_array = line_items.select {|l| Product.find(l.product_id).seller_id == id}

      @order.add_line_items_from_array(line_items_array)
      @order.state = "ordered"
      @order.notice = "new"
      
      if @order.save
        Notifier.order_received(@order).deliver
        Notifier.order_inform_seller(@order).deliver
        flag = true
      else 
        flag = false
      end
    end
    
    respond_to do |format|
      if flag == true
        format.html { redirect_to(store_url, :notice => I18n.t('.thanks')) }
        format.xml  { render :xml => @order, :status => :created, :location => @order }
      else 
        format.html { render :action => "new" }
        format.xml  { render :xml => @order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /orders/1
  # PUT /orders/1.xml
  def update
    @order = Order.find(params[:id])

    respond_to do |format|
      if @order.update_attributes(params[:order])
        format.html { redirect_to(@order, :notice => 'Order was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.xml
  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    respond_to do |format|
      format.html { redirect_to(orders_url) }
      format.xml  { head :ok }
    end
  end
  
  def ship
    @order = Order.find(params[:id])
    @order.state = "shipped"
    @order.notice = "delivered"
    @order.save
    Notifier.order_shipped(@order).deliver
    
    redirect_to orders_url
  end
  
  def check
    Order.where(:seller_id => session[:user_id]).each do |l|
      l.notice = "checked"
      l.save
    end
        
    redirect_to orders_url
  end
  
  def customer_check
    Order.where(:customer_id => session[:user_id]).each do |c|
      c.notice = "checked"
      c.save
    end
    
    redirect_to orders_url
  end
end
