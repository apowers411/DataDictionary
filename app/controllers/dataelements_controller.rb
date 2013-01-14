class DataelementsController < ApplicationController
  # GET /dataelements
  # GET /dataelements.json
  def index
    @search = Dataelement.search do
      fulltext params[:search]
      facet(:ds)
      with(:ds, params[:ds_check]) if params[:ds_check].present?
      paginate :page=> params[:page], :per_page=>20
    end
    @dataelements = @search.results
    
    
    #@search_total = @dataelements.total
   # @dataelements = Dataelement.all

    #respond_to do |format|
    #  format.html # index.html.erb
     # format.json { render json: @dataelements }
    #end
  end

  def show
    @dataelement = Dataelement.find(params[:id])
    @profilepages = @dataelement.profilepages.all
    @datatables = @dataelement.datatables.all
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dataelement }
    end
  end

  # GET /dataelements/new
  # GET /dataelements/new.json
  def new
    @dataelement = Dataelement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dataelement }
    end
  end

  # GET /dataelements/1/edit
  def edit
    @dataelement = Dataelement.find(params[:id])
  end

  # POST /dataelements
  # POST /dataelements.json
  def create
    @dataelement = Dataelement.new(params[:dataelement])

    respond_to do |format|
      if @dataelement.save
        format.html { redirect_to @dataelement, notice: 'Dataelement was successfully created.' }
        format.json { render json: @dataelement, status: :created, location: @dataelement }
      else
        format.html { render action: "new" }
        format.json { render json: @dataelement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dataelements/1
  # PUT /dataelements/1.json
  def update
    @dataelement = Dataelement.find(params[:id])

    respond_to do |format|
      if @dataelement.update_attributes(params[:dataelement])
        format.html { redirect_to @dataelement, notice: 'Dataelement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dataelement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dataelements/1
  # DELETE /dataelements/1.json
  def destroy
    @dataelement = Dataelement.find(params[:id])
    @dataelement.destroy

    respond_to do |format|
      format.html { redirect_to dataelements_url }
      format.json { head :no_content }
    end
  end
end
