class DatatablesController < ApplicationController
  # GET /datatables
  # GET /datatables.json
  def index
    @datatables = Datatable.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @datatables }
    end
  end

  # GET /datatables/1
  # GET /datatables/1.json
  def show
    @datatable = Datatable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @datatable }
    end
  end

  # GET /datatables/new
  # GET /datatables/new.json
  def new
    @datatable = Datatable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @datatable }
    end
  end

  # GET /datatables/1/edit
  def edit
    @datatable = Datatable.find(params[:id])
  end

  # POST /datatables
  # POST /datatables.json
  def create
    @datatable = Datatable.new(params[:datatable])

    respond_to do |format|
      if @datatable.save
        format.html { redirect_to @datatable, notice: 'Datatable was successfully created.' }
        format.json { render json: @datatable, status: :created, location: @datatable }
      else
        format.html { render action: "new" }
        format.json { render json: @datatable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /datatables/1
  # PUT /datatables/1.json
  def update
    @datatable = Datatable.find(params[:id])

    respond_to do |format|
      if @datatable.update_attributes(params[:datatable])
        format.html { redirect_to @datatable, notice: 'Datatable was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @datatable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datatables/1
  # DELETE /datatables/1.json
  def destroy
    @datatable = Datatable.find(params[:id])
    @datatable.destroy

    respond_to do |format|
      format.html { redirect_to datatables_url }
      format.json { head :no_content }
    end
  end
end
