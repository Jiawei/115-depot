class CategorynodesController < ApplicationController
  # GET /Categorynodes
  # GET /Categorynodes.xml
  def index
    @categorynodes = Categorynode.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categorynodes }
    end
  end

  # GET /Categorynodes/1
  # GET /Categorynodes/1.xml
  def show
    @categorynode = Categorynode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @categorynode }
    end
  end

  # GET /Categorynodes/new
  # GET /Categorynodes/new.xml
  def new
    @categorynode = Categorynode.new
    session[:category_id] = params[:category_id]
    @category_id = params[:category_id]
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @categorynode }
    end
  end

  # GET /Categorynodes/1/edit
  def edit
    @categorynode = Categorynode.find(params[:id])
    @categories = Category.all.collect {|c| [c.title, c.id] }
  end

  # POST /Categorynodes
  # POST /Categorynodes.xml
  def create
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

  # PUT /Categorynodes/1
  # PUT /Categorynodes/1.xml
  def update
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

  # DELETE /Categorynodes/1
  # DELETE /Categorynodes/1.xml
  def destroy
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
