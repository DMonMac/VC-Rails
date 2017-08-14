class TourguidesController < ApplicationController
  def index
    @tourguides = Tourguide.all
  end

  def show
    @tourguide = Tourguide.find(params[:id]) # This is similar to tourguide.find(<tourguide_id which was auto generated when creating a new tourguide>)
    @destinations = @tourguide.destinations
  end
end
