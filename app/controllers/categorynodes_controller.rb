class CategorynodesController < ApplicationController
  # GET /Categorynodes
  # GET /Categorynodes.xml
  def index
    if session[:user_id] == nil || User.find(session[:user_id]).usertype != "admin"
      redirect_to store_url, :notice => "Permission denied"
    else
      @categorynodes = Categorynode.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @categorynodes }
      end
    end
  end

  # GET /Categorynodes/1
  # GET /Categorynodes/1.xml
  def show
    if session[:user_id] == nil || User.find(session[:user_id]).usertype != "admin"
      redirect_to store_url, :notice => "Permission denied"
    else
      @categorynode = Categorynode.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @categorynode }
      end
    end
  end

  # GET /Categorynodes/new
  # GET /Categorynodes/new.xml
  def new
    if session[:user_id] == nil || User.find(session[:user_id]).usertype != "admin"
      redirect_to store_url, :notice => "Permission denied"
    else
      @categorynode = Categorynode.new
      session[:category_id] = params[:category_id]
      @category_id = params[:category_id]
      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @categorynode }
      end
    end
  end

  # GET /Categorynodes/1/edit
  def edit
    if session[:user_id] == nil || User.find(session[:user_id]).usertype != "admin"
      redirect_to store_url, :notice => "Permission denied"
    else
      @categorynode = Categorynode.find(params[:id])
      @categories = Category.all.collect {|c| [c.title, c.id] }
    end
  end

  # POST /Categorynodes
  # POST /Categorynodes.xml
  def create
    if session[:user_id] == nil || User.find(session[:user_id]).usertype != "admin"
      redirect_to store_url, :notice => "Permission denied"
    else
      @categorynode = Categorynode.new(params[:categorynode])
      @categorynode.category_id = session[:category_id]
      respond_to do |format|
        if @categorynode.save
          format.html { redirect_to({:controller => 'categories', :action => 'show',  
            :id => @categorynode.category_id
                  }, :notice => 'Category node was successfully created.') }
          format.xml  { render :xml => @categorynode, :status => :created, :location => @categorynode }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @categorynode.errors, :status => :unprocessable_entity }
        end
      end
    end
  end

  # PUT /Categorynodes/1
  # PUT /Categorynodes/1.xml
  def update
    if session[:user_id] == nil || User.find(session[:user_id]).usertype != "admin"
      redirect_to store_url, :notice => "Permission denied"
    else
      @categorynode = Categorynode.find(params[:id])
      respond_to do |format|
        if @categorynode.update_attributes(params[:categorynode])
          format.html { redirect_to({:controller => 'categories', :action => 'show',  
            :id => @categorynode.category_id
                  },:notice => 'Category node was successfully updated.') }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @categorynode.errors, :status => :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /Categorynodes/1
  # DELETE /Categorynodes/1.xml
  def destroy
    if session[:user_id] == nil || User.find(session[:user_id]).usertype != "admin"
      redirect_to store_url, :notice => "Permission denied"
    else
      @categorynode = Categorynode.find(params[:id])
      @categorynode.destroy
  
      respond_to do |format|
        format.html { redirect_to({:controller => 'categories', :action => 'show', 
          :id => @categorynode.category_id
                  },:notice => 'Categorynode was successfully destory.')  }
        format.xml  { head :ok }
      end
    end
  end
end
