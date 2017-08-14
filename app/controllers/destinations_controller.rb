class DestinationsController < ApplicationController
  before_action :authenticate_tourguide!, except: [:index, :show]
  before_action :set_destination, only: [:edit, :update, :destroy]

  # GET /destinations
  # GET /destinations.json
  def index
    if params[:search].present?
      @destinations = Destination.near(params[:search], 25, :units => :km)
    else
      @destinations = Destination.all
    end
  end

  # GET /destinations/1
  # GET /destinations/1.json
  def show
    @destination = Destination.find(params[:id])
  end

  # GET /destinations/new
  def new
    if tourguide_signed_in?
      @destination = current_tourguide.destinations.build
    end
  end

  # GET /destinations/1/edit
  def edit
  end

  # POST /destinations
  # POST /destinations.json
  def create
    @destination = current_tourguide.destinations.build(destination_params)

    respond_to do |format|
      if @destination.save
        format.html { redirect_to @destination, notice: 'Destination was successfully created.' }
        format.json { render :show, status: :created, location: @destination }
      else
        format.html { render :new }
        format.json { render json: @destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /destinations/1
  # PATCH/PUT /destinations/1.json
  def update
    respond_to do |format|
      if @destination.update(destination_params)
        format.html { redirect_to @destination, notice: 'Destination was successfully updated.' }
        format.json { render :show, status: :ok, location: @destination }
      else
        format.html { render :edit }
        format.json { render json: @destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /destinations/1
  # DELETE /destinations/1.json
  def destroy
    @destination.destroy
    respond_to do |format|
      format.html { redirect_to destinations_url, notice: 'Destination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destination
      @destination = current_tourguide.destinations.find_by(id: params[:id])
      if @destination.nil?
        redirect_to destinations_url, notice: 'Only the owner can do this.'
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def destination_params
      params.require(:destination).permit(:d_name, :d_description, :tourguide_id, :street, :city, :zip_code, :country, :latitude, :longitude)
    end

end
