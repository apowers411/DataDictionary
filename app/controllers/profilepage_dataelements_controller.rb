class ProfilepageDataelementsController < ApplicationController
  # GET /profilepage_dataelements
  # GET /profilepage_dataelements.json
  def index
    @profilepage_dataelements = ProfilepageDataelement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @profilepage_dataelements }
    end
  end

  # GET /profilepage_dataelements/1
  # GET /profilepage_dataelements/1.json
  def show
    @profilepage_dataelement = ProfilepageDataelement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @profilepage_dataelement }
    end
  end

  # GET /profilepage_dataelements/new
  # GET /profilepage_dataelements/new.json
  def new
    @profilepage_dataelement = ProfilepageDataelement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @profilepage_dataelement }
    end
  end

  # GET /profilepage_dataelements/1/edit
  def edit
    @profilepage_dataelement = ProfilepageDataelement.find(params[:id])
  end

  # POST /profilepage_dataelements
  # POST /profilepage_dataelements.json
  def create
    @profilepage_dataelement = ProfilepageDataelement.new(params[:profilepage_dataelement])

    respond_to do |format|
      if @profilepage_dataelement.save
        format.html { redirect_to @profilepage_dataelement, notice: 'Profilepage dataelement was successfully created.' }
        format.json { render json: @profilepage_dataelement, status: :created, location: @profilepage_dataelement }
      else
        format.html { render action: "new" }
        format.json { render json: @profilepage_dataelement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /profilepage_dataelements/1
  # PUT /profilepage_dataelements/1.json
  def update
    @profilepage_dataelement = ProfilepageDataelement.find(params[:id])

    respond_to do |format|
      if @profilepage_dataelement.update_attributes(params[:profilepage_dataelement])
        format.html { redirect_to @profilepage_dataelement, notice: 'Profilepage dataelement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @profilepage_dataelement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profilepage_dataelements/1
  # DELETE /profilepage_dataelements/1.json
  def destroy
    @profilepage_dataelement = ProfilepageDataelement.find(params[:id])
    @profilepage_dataelement.destroy

    respond_to do |format|
      format.html { redirect_to profilepage_dataelements_url }
      format.json { head :no_content }
    end
  end
end
