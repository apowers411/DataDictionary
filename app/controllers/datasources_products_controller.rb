class DatasourcesProductsController < ApplicationController
  # GET /datasources_products
  # GET /datasources_products.json
  def index
    @datasources_products = DatasourcesProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @datasources_products }
    end
  end

  # GET /datasources_products/1
  # GET /datasources_products/1.json
  def show
    @datasources_product = DatasourcesProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @datasources_product }
    end
  end

  # GET /datasources_products/new
  # GET /datasources_products/new.json
  def new
    @datasources_product = DatasourcesProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @datasources_product }
    end
  end

  # GET /datasources_products/1/edit
  def edit
    @datasources_product = DatasourcesProduct.find(params[:id])
  end

  # POST /datasources_products
  # POST /datasources_products.json
  def create
    @datasources_product = DatasourcesProduct.new(params[:datasources_product])

    respond_to do |format|
      if @datasources_product.save
        format.html { redirect_to @datasources_product, notice: 'Datasources product was successfully created.' }
        format.json { render json: @datasources_product, status: :created, location: @datasources_product }
      else
        format.html { render action: "new" }
        format.json { render json: @datasources_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /datasources_products/1
  # PUT /datasources_products/1.json
  def update
    @datasources_product = DatasourcesProduct.find(params[:id])

    respond_to do |format|
      if @datasources_product.update_attributes(params[:datasources_product])
        format.html { redirect_to @datasources_product, notice: 'Datasources product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @datasources_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datasources_products/1
  # DELETE /datasources_products/1.json
  def destroy
    @datasources_product = DatasourcesProduct.find(params[:id])
    @datasources_product.destroy

    respond_to do |format|
      format.html { redirect_to datasources_products_url }
      format.json { head :no_content }
    end
  end
end
