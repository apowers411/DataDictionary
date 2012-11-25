class ProfilepagesController < ApplicationController
  # GET /profilepages
  # GET /profilepages.json
  def index
    @profilepages = Profilepage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @profilepages }
    end
  end

  # GET /profilepages/1
  # GET /profilepages/1.json
  def show
    @profilepage = Profilepage.find(params[:id])
    @dataelements = @profilepage.dataelements.all
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @profilepage }
    end
  end

  # GET /profilepages/new
  # GET /profilepages/new.json
  def new
    @profilepage = Profilepage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @profilepage }
    end
  end

  # GET /profilepages/1/edit
  def edit
    @profilepage = Profilepage.find(params[:id])
  end

  # POST /profilepages
  # POST /profilepages.json
  def create
    @profilepage = Profilepage.new(params[:profilepage])

    respond_to do |format|
      if @profilepage.save
        format.html { redirect_to @profilepage, notice: 'Profilepage was successfully created.' }
        format.json { render json: @profilepage, status: :created, location: @profilepage }
      else
        format.html { render action: "new" }
        format.json { render json: @profilepage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /profilepages/1
  # PUT /profilepages/1.json
  def update
    @profilepage = Profilepage.find(params[:id])

    respond_to do |format|
      if @profilepage.update_attributes(params[:profilepage])
        format.html { redirect_to @profilepage, notice: 'Profilepage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @profilepage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profilepages/1
  # DELETE /profilepages/1.json
  def destroy
    @profilepage = Profilepage.find(params[:id])
    @profilepage.destroy

    respond_to do |format|
      format.html { redirect_to profilepages_url }
      format.json { head :no_content }
    end
  end
end
