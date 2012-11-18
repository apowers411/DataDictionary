class DatatableDataelementsController < ApplicationController
  # GET /datatable_dataelements
  # GET /datatable_dataelements.json
  def index
    @datatable_dataelements = DatatableDataelement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @datatable_dataelements }
    end
  end

  # GET /datatable_dataelements/1
  # GET /datatable_dataelements/1.json
  def show
    @datatable_dataelement = DatatableDataelement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @datatable_dataelement }
    end
  end

  # GET /datatable_dataelements/new
  # GET /datatable_dataelements/new.json
  def new
    @datatable_dataelement = DatatableDataelement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @datatable_dataelement }
    end
  end

  # GET /datatable_dataelements/1/edit
  def edit
    @datatable_dataelement = DatatableDataelement.find(params[:id])
  end

  # POST /datatable_dataelements
  # POST /datatable_dataelements.json
  def create
    @datatable_dataelement = DatatableDataelement.new(params[:datatable_dataelement])

    respond_to do |format|
      if @datatable_dataelement.save
        format.html { redirect_to @datatable_dataelement, notice: 'Datatable dataelement was successfully created.' }
        format.json { render json: @datatable_dataelement, status: :created, location: @datatable_dataelement }
      else
        format.html { render action: "new" }
        format.json { render json: @datatable_dataelement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /datatable_dataelements/1
  # PUT /datatable_dataelements/1.json
  def update
    @datatable_dataelement = DatatableDataelement.find(params[:id])

    respond_to do |format|
      if @datatable_dataelement.update_attributes(params[:datatable_dataelement])
        format.html { redirect_to @datatable_dataelement, notice: 'Datatable dataelement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @datatable_dataelement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datatable_dataelements/1
  # DELETE /datatable_dataelements/1.json
  def destroy
    @datatable_dataelement = DatatableDataelement.find(params[:id])
    @datatable_dataelement.destroy

    respond_to do |format|
      format.html { redirect_to datatable_dataelements_url }
      format.json { head :no_content }
    end
  end
end
