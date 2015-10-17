class ClinicLocationsController < ApplicationController
  before_action :set_clinic_location, only: [:show, :edit, :update, :destroy]
  respond_to :json

  # GET /clinic_locations
  # GET /clinic_locations.json
  def index
    @clinic_locations = ClinicLocation.all

    # respond_to do |f|
    #   f.json { render :index, location: @clinic_locations }
    # end
  end

  # GET /clinic_locations/1
  # GET /clinic_locations/1.json
  def show
  end

  # GET /clinic_locations/new
  def new
    @clinic_location = ClinicLocation.new
  end

  # GET /clinic_locations/1/edit
  def edit
  end

  # POST /clinic_locations
  # POST /clinic_locations.json
  def create
    @clinic_location = ClinicLocation.new(clinic_location_params)

    respond_to do |format|
      if @clinic_location.save
        format.html { redirect_to @clinic_location, notice: 'Clinic location was successfully created.' }
        format.json { render :show, status: :created, location: @clinic_location }
      else
        format.html { render :new }
        format.json { render json: @clinic_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinic_locations/1
  # PATCH/PUT /clinic_locations/1.json
  def update
    respond_to do |format|
      if @clinic_location.update(clinic_location_params)
        format.html { redirect_to @clinic_location, notice: 'Clinic location was successfully updated.' }
        format.json { render :show, status: :ok, location: @clinic_location }
      else
        format.html { render :edit }
        format.json { render json: @clinic_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinic_locations/1
  # DELETE /clinic_locations/1.json
  def destroy
    @clinic_location.destroy
    respond_to do |format|
      format.html { redirect_to clinic_locations_url, notice: 'Clinic location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic_location
      @clinic_location = ClinicLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clinic_location_params
      params.require(:clinic_location).permit(:title, :address, :phone_number, :long, :lat)
    end
end
