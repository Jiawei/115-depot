class CategorynodesController < ApplicationController
  # GET /category_nodes
  # GET /category_nodes.xml
  def index
    @category_nodes = CategoryNode.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @category_nodes }
    end
  end

  # GET /category_nodes/1
  # GET /category_nodes/1.xml
  def show
    @category_node = CategoryNode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @category_node }
    end
  end

  # GET /category_nodes/new
  # GET /category_nodes/new.xml
  def new
    @category_node = CategoryNode.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @category_node }
    end
  end

  # GET /category_nodes/1/edit
  def edit
    @category_node = CategoryNode.find(params[:id])
  end

  # POST /category_nodes
  # POST /category_nodes.xml
  def create
    @category_node = CategoryNode.new(params[:category_node])

    respond_to do |format|
      if @category_node.save
        format.html { redirect_to(@category_node, :notice => 'Category node was successfully created.') }
        format.xml  { render :xml => @category_node, :status => :created, :location => @category_node }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @category_node.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /category_nodes/1
  # PUT /category_nodes/1.xml
  def update
    @category_node = CategoryNode.find(params[:id])

    respond_to do |format|
      if @category_node.update_attributes(params[:category_node])
        format.html { redirect_to(@category_node, :notice => 'Category node was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @category_node.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /category_nodes/1
  # DELETE /category_nodes/1.xml
  def destroy
    @category_node = CategoryNode.find(params[:id])
    @category_node.destroy

    respond_to do |format|
      format.html { redirect_to(category_nodes_url) }
      format.xml  { head :ok }
    end
  end
end
