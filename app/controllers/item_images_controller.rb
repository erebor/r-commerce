class ItemImagesController < ApplicationController
  # GET /item_images
  # GET /item_images.xml
  def index
    @item_images = ItemImage.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @item_images }
    end
  end

  # GET /item_images/1
  # GET /item_images/1.xml
  def show
    @item_image = ItemImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @item_image }
    end
  end

  # GET /item_images/new
  # GET /item_images/new.xml
  def new
    @item_image = ItemImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @item_image }
    end
  end

  # GET /item_images/1/edit
  def edit
    @item_image = ItemImage.find(params[:id])
  end

  # POST /item_images
  # POST /item_images.xml
  def create
    @item_image = ItemImage.new(params[:item_image])

    respond_to do |format|
      if @item_image.save
        flash[:notice] = 'ItemImage was successfully created.'
        format.html { redirect_to(@item_image) }
        format.xml  { render :xml => @item_image, :status => :created, :location => @item_image }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @item_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /item_images/1
  # PUT /item_images/1.xml
  def update
    @item_image = ItemImage.find(params[:id])

    respond_to do |format|
      if @item_image.update_attributes(params[:item_image])
        flash[:notice] = 'ItemImage was successfully updated.'
        format.html { redirect_to(@item_image) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @item_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /item_images/1
  # DELETE /item_images/1.xml
  def destroy
    @item_image = ItemImage.find(params[:id])
    @item_image.destroy

    respond_to do |format|
      format.html { redirect_to(item_images_url) }
      format.xml  { head :ok }
    end
  end
end
