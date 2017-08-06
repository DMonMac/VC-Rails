class HomesController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :edit, :update, :destroy]
  before_action :correct_user, only: :destroy

  def new
    if logged_in?
      @home = current_user.homes.build
    end
  end

  def index
  end

  def show
    @home = Home.find(params[:id])
  end


  def create
    @home = current_user.homes.build(home_params)
    if @home.save
      flash[:success] = "Successfully added home: #{@home.name}"
      redirect_to user_url(@home.user_id)
    else
      @feed_items = []
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @home.destroy
    flash[:success] = "Home removed."
    redirect_to request.referrer || user_url
  end

  private

  def home_params
    params.require(:home).permit(:name,
                                 :location,
                                 :description,
                                 :price,
                                 :picture)
  end

  def correct_user
    @home = current_user.homes.find_by(id: params[:id])
    redirect_to user_url if @home.nil?
  end

end
