class HomesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_home, only: [:edit, :update, :destroy]
  # GET /homes
  # GET /homes.json
  def index
    if params[:search].present?
      @homes = Home.near(params[:search], 50)
    else
      @homes = Home.all
    end
  end

  # GET /homes/1
  # GET /homes/1.json
  def show
    @home = Home.find(params[:id])
  end

  # GET /homes/new
  def new
    if user_signed_in?
      @home = current_user.homes.build
    end
  end

  # GET /homes/1/edit
  def edit
  end

  # POST /homes
  # POST /homes.json
  def create
    @home = current_user.homes.build(home_params)

    respond_to do |format|
      if @home.save
        format.html { redirect_to @home, notice: 'Home was successfully created.' }
        format.json { render :show, status: :created, location: @home }
      else
        format.html { render :new }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homes/1
  # PATCH/PUT /homes/1.json
  def update
    respond_to do |format|
      if @home.update(home_params)
        format.html { redirect_to @home, notice: 'Home was successfully updated.' }
        format.json { render :show, status: :ok, location: @home }
      else
        format.html { render :edit }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homes/1
  # DELETE /homes/1.json
  def destroy
    @home.destroy
    respond_to do |format|
      format.html { redirect_to homes_url, notice: 'Home was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home
      @home = current_user.homes.find_by(id: params[:id])
      if @home.nil?
      redirect_to homes_url, notice: 'Only the owner can do this.'
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_params
      params.require(:home).permit(:name,
                                   :address,
                                   :latitude,
                                   :longitude,
                                   :description,
                                   :price,
                                   :home_picture)
    end

end
